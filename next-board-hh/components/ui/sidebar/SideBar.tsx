'use client';

import { Button, SearchBar } from '@/components/ui';
import { useRouter } from 'next/navigation';

const SideBar = ({ data = [] }) => {
  const router = useRouter();

  console.log('사이드바 데이터 : ', data);

  const clickTitle = (id) => {
    console.log('클릭한 title id 값 추출:', id);
    router.push(`/board/${id}`);
  };

  return (
    <aside>
      <SearchBar placeholder="검색어를 입력하세요." />
      <Button
        className="text-[#E79057] bg-white border border-[#E79057] hover:bg-[#FFF9F5] w-full mt-2"
        onClick={() => router.push('/board/1')}
      >
        Add New Page
      </Button>
      <div className="flex flex-col mt-4 gap-2">
        <small className="text-sm font-medium leading-none text-[#A6A6A6]">
          효환의 TODO-BOARD
        </small>
        <ul className="flex flex-col">
          {data.map((item) => (
            <li
              key={item.id}
              className="flex items-center gap-3 mb-2 py-2 px-[10px] bg-[#F5F5F5] rounded-sm text-sm transition-all duration-200 ease-in-out hover:bg-[#E79057] hover:text-white hover:shadow-md cursor-pointer"
              onClick={() => clickTitle(item.id)}
            >
              <div className="h-[6px] w-[6px] rounded-full bg-[#00F38D]"></div>
              {item.title || '제목을 넣어주세요'}
            </li>
          ))}
        </ul>
      </div>
    </aside>
  );
};

export default SideBar;
