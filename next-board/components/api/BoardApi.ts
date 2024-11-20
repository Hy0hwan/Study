import { supabase } from '@/lib/supabase';
// import { useToast } from '@/hooks/use-toast';

export const getTodos = async () => {
  try {
    const { data } = await supabase.from('todos').select('*');

    console.log('getTodos 데이터:', data);
    return data;
  } catch (error) {
    console.error('데이터 조회 에러:', error);
    return [];
  }
};

/** TODO 생성 요청*/
export const createTodo = async () => {
  //   const { toast } = useToast();
  try {
    const { data } = await supabase
      .from('todos')
      .insert([
        {
          title: '',
          start_date: null,
          end_date: null,
          content: '',
          boards: [],
        },
      ])
      .select();
    console.log('insert 데이터:', data);
    // toast({
    //   description: '데이터를 성공적으로 생성했습니다!',
    // });
    return data;
  } catch (error) {
    console.error('데이터 삽입 에러:', error);

    return null;
  }
};

/** 보드 데이터 get 요청 */
export const getBoardData = async (pathname) => {
  try {
    const { data } = await supabase
      .from('todos')
      .select('boards')
      .eq('id', Number(pathname.split('/')[2]));

    console.log(`Array column data for ID ${pathname}:`, data);
    return data;
  } catch (error) {
    console.error('Error fetching array column by ID:', error);
  }
};

/** 보드 데이터 update 요청 */
export const updateBoards = async (newBoards, pathname) => {
  try {
    const { status, error } = await supabase
      .from('todos')
      .update({ boards: newBoards })
      .eq('id', Number(pathname.split('/')[2]));

    if (status === 204) {
      console.log('updateBoards() 성공!');
      //   toast({
      //     title: '새로운 TODO-BOARD가 생성되었습니다.',
      //     description: '생성한 TODO-BOARD를 예쁘게 꾸며주세요.',
      //   });
      //   getData(); // 데이터 갱신
    }

    if (error) {
      console.error(error);
      //   toast({
      //     variant: 'destructive',
      //     title: '에러가 발생했습니다.',
      //     description: '개발자 도구창을 확인하세요.',
      //   });
    }
  } catch (error) {
    console.log(error);
  }
};
