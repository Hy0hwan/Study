import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components';
import MarineAndSailing from './highlight/MarineAndSailing';
import SunriseAndSunSet from './highlight/SunriseAndSunset';
import DataCard from './highlight/DataCard';

const TodayHighLight = () => {
  const dataCardData = [
    {
      title_kr: '습도',
      title_en: 'Humidity',
      value: 64,
      icon: '/src/assets/icons/Waves.png',
      symbol: '%',
    },
    {
      title_kr: '기압',
      title_en: 'Pressure',
      value: 1024,
      icon: '/src/assets/icons/1030n.svg',
      symbol: 'hPa',
    },
    {
      title_kr: '가시거리',
      title_en: 'Visibility',
      value: 10,
      icon: '/src/assets/icons/1153.svg',
      symbol: 'km',
    },
    {
      title_kr: '체감온도',
      title_en: 'Feels Like',
      value: 19,
      icon: '/src/assets/icons/Hot.svg',
      symbol: '°C',
    },
  ];

  return (
    <Card className="flex-1 bg-white">
      <CardHeader className="text-x1 font-bold">
        <CardTitle className="text-xl">Today's Highlights</CardTitle>
        <CardDescription>
          오늘 날씨 중 주의깊게 살펴보아야 할 이벤트를 조회하고 있습니다.
        </CardDescription>
      </CardHeader>
      <CardContent className="flex flex-col gap-5">
        <div className="flex items-center gap-5">
          <MarineAndSailing />
          <SunriseAndSunSet />
        </div>
        <div className="w-full grid grid-cols-4 gap-5">
          {dataCardData.map((value, index) => (
            <DataCard data={value} key={index} />
          ))}
        </div>
      </CardContent>
    </Card>
  );
};

export default TodayHighLight;
