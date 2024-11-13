import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components';
import TimeWeather from './Houry/TimeWeather';

const Houry = () => {
  const timeWeatherData = [
    {
      time: '1시',
      icons: '/src/assets/icons/1063d.svg',
      temp: '12',
    },
    {
      time: '1시',
      icons: '/src/assets/icons/1063d.svg',
      temp: '12',
    },
    {
      time: '1시',
      icons: '/src/assets/icons/1063d.svg',
      temp: '12',
    },
    {
      time: '1시',
      icons: '/src/assets/icons/1063d.svg',
      temp: '12',
    },
    {
      time: '1시',
      icons: '/src/assets/icons/1063d.svg',
      temp: '12',
    },
    {
      time: '1시',
      icons: '/src/assets/icons/1063d.svg',
      temp: '12',
    },
  ];

  return (
    <Card className="bg-white flex-1 h-full max-w-[calc(50%-48px)]">
      <CardHeader>
        <CardTitle className="text-xl">Houry</CardTitle>
        <CardDescription>
          오늘의 시간대별 날씨를 조회하고 있습니다.
        </CardDescription>
      </CardHeader>
      <CardContent className="w-full flex items-start gap-4">
        {timeWeatherData.map((value, index) => (
          <TimeWeather data={value} key={index} />
        ))}
      </CardContent>
    </Card>
  );
};

export default Houry;
