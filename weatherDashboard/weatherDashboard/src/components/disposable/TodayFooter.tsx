import { ReactNode } from 'react';

type TodayFooterType = {
  icons: ReactNode;
  numbertext: string;
};

const TodayFooter = ({ icons, numbertext }: TodayFooterType) => {
  return (
    <div>
      <div>{icons}</div>
      <div>{numbertext}</div>
    </div>
  );
};

export default TodayFooter;
