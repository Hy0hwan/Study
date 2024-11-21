'use client';

import { usePathname } from 'next/navigation';
import { Button, Progress, LabelDatePicker } from '@/components/ui';
import { ChevronLeft } from 'lucide-react';
import styles from './page.module.scss';
import SideBar from '@/components/ui/sidebar/SideBar';
import { useEffect, useState } from 'react';
import { nanoid } from 'nanoid';
import { useAtom } from 'jotai';
import { todoList } from '@/components/api/atoms';
import { getBoardData, updateBoards } from '@/components/api/boardApi';
import BoardList from '@/components/ui/boards/BoardList';

interface BoardContent {
  id: string | number;
  isChecked: boolean;
  title: string;
  startDate: Date | string;
  endDate: Date | string;
  content: string;
}

function BoardPage() {
  const [boards, setBoards] = useState<BoardContent[]>([]);
  // const [title, setTitle] = useState<string>('');
  // const [startDate, setStartDate] = useState<Date>(new Date());
  // const [endDate, setEndDate] = useState<Date>(new Date());
  // const [cheacked, setChecked] = useState(false);

  const [todo] = useAtom(todoList);
  const pathname = usePathname();

  console.log('boards :', boards);

  const fetchBoardData = async (pathname: string) => {
    try {
      const data = await getBoardData(pathname);
      setBoards(data);
    } catch (error) {
      console.error(error);
    }
  };

  useEffect(() => {
    fetchBoardData(pathname);
  }, [pathname]);

  let newBoards: BoardContent[] = [];
  const boardContent = {
    id: nanoid(),
    isChecked: false,
    title: '테스트중 타이틀',
    startDate: '',
    endDate: '',
    content: '테스크 컨텐트',
  };
  if (boards.length) {
    console.log(boards);
    newBoards = [...boards, boardContent];
    newBoards.push(boardContent);
  } else {
    newBoards.push(boardContent);
  }

  const createBoard = () => {
    console.log('클릭시 빈 보드 생성');
    // updateBoards(newBoards, pathname);
  };

  return (
    <div className="page">
      <div className="page__aside">
        <SideBar data={todo} />
      </div>

      <main className="page__main">
        <div className={styles.header}>
          <div className={styles[`header__btn-box`]}>
            <Button variant={'outline'} size={'icon'}>
              <ChevronLeft />
            </Button>
            <Button variant={'secondary'}>저장</Button>
          </div>
          <div className={styles.header__top}>
            {/* 제목 입력 Input 섹션 */}
            <input
              type="text"
              placeholder="Enter Title Here!"
              className={styles.header__top__input}
            />
            {/* 진행상황 척도 그래프 섹션 */}
            <div className="flex items-center justify-start gap-4">
              <small className="text-sm font-medium leading-none text-[#6D6D6D]">
                1/10 Completed
              </small>
              <Progress className="w-60 h-[10px]" value={33} />
            </div>
          </div>
          {/* 캘린더 + Add New Board 버튼 섹션 */}
          <div className={styles.header__bottom}>
            <div className="flex items-center gap-5">
              <LabelDatePicker label={'From'} />
              <LabelDatePicker label={'To'} />
            </div>
            <Button
              onClick={createBoard}
              className="text-white bg-[#E79057] hover:bg-[#E26F24] hover:ring-1 hover:ring-[#E26F24] hover:ring-offset-1 active:bg-[#D5753D] hover:shadow-lg"
            >
              Add New Board
            </Button>
          </div>
        </div>

        <BoardList boards={boards} newBoards={newBoards} pathname={pathname} />
      </main>
    </div>
  );
}

export default BoardPage;
