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
