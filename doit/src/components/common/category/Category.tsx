import { useState } from 'react';
import { nav } from './Category.json';
import { useAtom } from 'jotai';
import { searchValueAtom } from '@/stores/atom';
import { useLocation, useNavigate } from 'react-router-dom';

type NavData = {
  label: string;
  path: string;
};

const Category = () => {
  const location = useLocation();
  const navigate = useNavigate();

  const [category] = useState<NavData[]>(nav);
  const [searchValue, setSearchValue] = useAtom(searchValueAtom);

  console.log('searchValue : ', searchValue);

  const categoryClick = (path: string) => {
    setSearchValue(path);
    navigate(path);
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
