import { useState } from 'react';
import { nav } from './Category.json';

type NavData = {
  label: string;
  path: string;
};

const Category = () => {
  const [category] = useState<NavData[]>(nav);

  const categoryClick = (path: string) => {
    console.log('클릭이벤트로 받아온 링크 : ', path);
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
