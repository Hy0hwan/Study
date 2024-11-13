import WeatherByHour from '../disposable/WeatherByHour';
import Intro from '../shared/Intro';

const Hourly = () => {
  return (
    <div>
      <Intro
        title="Hourly"
        description="오늘 시간대별 날씨를 조회하고 있습니다."
      />
      <WeatherByHour />
    </div>
  );
};

export default Hourly;
