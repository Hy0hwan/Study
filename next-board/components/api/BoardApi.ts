import { supabase } from '@/lib/supabase';
// import { useToast } from '@/hooks/use-toast';

export const createTodo = async () => {
  //   const { toast } = useToast();

  try {
    const { data } = await supabase
      .from('todos')
      .insert([
        {
          title: 'someValue',
          start_date: null,
          end_date: null,
          content: '테스트중',
          boards: [],
        },
      ])
      .select();

    console.log('가져온 데이터:', data);

    // toast({
    //   description: '데이터를 성공적으로 생성했습니다!',
    // });

    return data;
  } catch (error) {
    console.error('데이터 삽입 에러:', error);

    return null;
  }
};
