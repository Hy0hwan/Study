import { useState } from 'react';
import { nav } from './Category.json';
import { useAtom } from 'jotai';
import { searchValueAtom } from '@/stores/atom';
import { useLocation } from 'react-router-dom';

type NavData = {
  label: string;
  path: string;
};
/** Link를 클릭했을 때, navMenu에서 map 함수를 통해 순환하는 nav의 요소를 가지고 검색 기능처럼 구현한다.
 * 1. searchValue를 활용해야 할 것 같다.
 * 2. searchValue를 store에 선언한 searchValueAtom에 할당해야할 것 같다.
 * 2-1. Link 클릭을 했을 때, path가 바뀐다. => path 경로에 대한 데이터를 활용할 수 있을 것 같다.
 * 2-2. Link를 Button으로 바꾼다. 클릭 이벤트를 할당하고 => 이벤트 내에서 setAtom과 관련된 함수를 호출한다.
 */
const Category = () => {
  const { pathname } = useLocation();
  const [category] = useState<NavData[]>(nav);
  const [searchValue, setSearchValue] = useAtom(searchValueAtom);

  const categoryClick = (path: string) => {
    console.log('클릭이벤트로 받아온 링크 : ', path);
    setSearchValue(path);
  };

  return (
    <div className="flex gap-6 justify-center p-5">
      {category.map((data) => (
        <div
          key={data.label}
          onClick={() => categoryClick(data.path)}
          className="text-2xl font-jua hover:bg-slate-400 cursor-pointer"
        >
          {data.label}
        </div>
      ))}
    </div>
  );
};

export default Category;
