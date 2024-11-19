'use client';

import { Button, SearchBar } from '@/components/ui';
import { useRouter } from 'next/navigation';

const SideBar = () => {
  const router = useRouter();

  return (
    <aside>
      {/* 검색창 UI */}
      <SearchBar placeholder="검색어를 입력하세요." />
      {/* Add New Page 버튼 UI */}
      <Button
        className="text-[#E79057] bg-white border border-[#E79057] hover:bg-[#FFF9F5] w-full mt-2"
        onClick={() => router.push('/board/1')}
      >
        Add New Page
      </Button>
      {/* TODO 목록 UI 하나 */}
      <div className="flex flex-col mt-4 gap-2">
        <small className="text-sm font-medium leading-none text-[#A6A6A6]">
          효환의 TODO-BOARD
        </small>
        <ul className="flex flex-col">
          <li className="flex items-center gap-2 py-2 px-[10px] bg-[#F5F5F5] rounded-sm text-sm">
            <div className="h-[6px] w-[6px] rounded-full bg-[#00F38D]"></div>
            Enter Title
          </li>
          <li className="flex items-center gap-2 py-2 px-[10px] bg-[#F5F5F5] rounded-sm text-sm">
            <div className="h-[6px] w-[6px] rounded-full bg-[#00F38D]"></div>
            Enter Title
          </li>
        </ul>
      </div>
    </aside>
  );
};

export default SideBar;
