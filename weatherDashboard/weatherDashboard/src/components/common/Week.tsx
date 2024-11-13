import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components';
import OneWeeksWeather from './week/OneWeeksWeather';

const Week = () => {
  const weatherThisWeek = [
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 22,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '일요일',
    },
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 28,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '월요일',
    },
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 22,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '화요일',
    },
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 12,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '수요일',
    },
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 72,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '목요일',
    },
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 20,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '금요일',
    },
    {
      icons: '/src/assets/icons/Hot.svg',
      highesTemp: 92,
      lowestTemp: 14,
      monthAndDay: '03 Nov',
      dayOfTheWeek: '토요일',
    },
  ];

  return (
    <Card className="w-1/4 bg-white">
      <CardHeader>
        <CardTitle className="text-xl">7 Days</CardTitle>
        <CardDescription>이번주 날씨를 조회하고 있습니다.</CardDescription>
      </CardHeader>
      <CardContent className="flex flex-col w-full gap-1">
        {weatherThisWeek.map((value, index) => (
          <OneWeeksWeather data={value} key={index} />
        ))}
      </CardContent>
    </Card>
  );
};

export default Week;
