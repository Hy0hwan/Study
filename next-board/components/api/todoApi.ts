// let { data: boards, error } = await supabase
//   .from('boards')
//   .select('*, todos!inner(*)'); // todos 테이블의 모든 데이터 포함

// if (error) {
//   console.error('Error fetching boards with todos:', error);
// } else {
//   console.log('Boards with todos:', boards);
// }

// boards 테이블에서 id와 name만 가져옴

import { supabase } from '@/lib/supabase';

export const getTodo = async () => {
  try {
    let { data } = await supabase
      .from('boards')
      .select('*, boards(id,board_content)');

    console.log('getTodo 데이터:', data);
    return data;
  } catch (error) {
    console.error('데이터 조회 에러:', error);
    return [];
  }
};
