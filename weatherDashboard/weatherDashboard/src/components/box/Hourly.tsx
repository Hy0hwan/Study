import WeatherByHour from '../disposable/WeatherByHour';
import Intro from '../shared/Intro';
import { Card } from '../ui/card';

const Hourly = () => {
  return (
    <Card className="w-2/5">
      <Intro
        title="Hourly"
        description="오늘 시간대별 날씨를 조회하고 있습니다."
      />
      <WeatherByHour />
    </Card>
  );
};

export default Hourly;
