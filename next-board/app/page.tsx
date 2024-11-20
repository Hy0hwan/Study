'use client';

import { useRouter } from 'next/navigation';
import { Button } from '@/components/ui';
import SideBar from '@/components/ui/sidebar/SideBar';
import { createTodo, getTodos } from '@/components/api/BoardApi';
import { useAtom } from 'jotai';
import { todoList } from '@/components/api/atoms';
import { useEffect } from 'react';
// import { useEffect } from 'react';

function InitPage() {
  const router = useRouter();

  const [todo, setTodo] = useAtom(todoList);

  // 데이터를 가져와 상태에 저장하는 함수
  const fetchTodos = async () => {
    try {
      const data = await getTodos();
      setTodo(data);
    } catch (error) {
      console.error('Failed to fetch todos:', error);
    }
  };

  useEffect(() => {
    fetchTodos();
  }, []);

  const btnOnclick = () => {
    createTodo(); //todo생성 api
    router.push('/board/1');
  };

  return (
    <div className="page">
      <div className="page__aside">
        <SideBar data={todo} />
      </div>

      <main className="page__main">
        <div className="w-full h-full flex flex-col items-center justify-center">
          <div className="flex flex-col items-center justify-center gap-5 mb-6">
            <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight">
              How to start:
            </h3>
            <div className="flex flex-col items-center gap-3">
              <small className="text-sm font-normal leading-none">
                1. Create a page
              </small>
              <small className="text-sm font-normal leading-none">
                2. Add boards to page
              </small>
            </div>
          </div>
          <Button
            className="text-[#E79057] bg-transparent border border-[#E79057] hover:bg-[#FFF9F5] w-[180px]"
            onClick={btnOnclick}
          >
            Add New Page
          </Button>
        </div>
      </main>
    </div>
  );
}

export default InitPage;
