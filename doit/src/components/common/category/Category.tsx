import { useState } from 'react';
import { nav } from './Category.json';

type NavData = {
  name: string;
  link: string;
};

const Category = () => {
  const [category] = useState<NavData[]>(nav);

  const categoryClick = (link: string) => {
    console.log('클릭이벤트로 받아온 링크 : ', link);
  };

  return (
    <div className="flex gap-6 justify-center p-5">
      {category.map((data) => (
        <div
          key={data.name}
          onClick={() => categoryClick(data.link)}
          className="text-2xl font-jua hover:bg-slate-400 cursor-pointer"
        >
          {data.name}
        </div>
      ))}
    </div>
  );
};

export default Category;
