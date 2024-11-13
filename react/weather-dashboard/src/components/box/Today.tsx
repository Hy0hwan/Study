import TodayFooter from '../disposable/TodayFooter';
import IconAndNumber from '../shared/IconAndNumber';
import Intro from '../shared/Intro';
import sun from '../../assets/weather/sun.png';
import { Card, CardContent } from '../ui/card';

const Today = () => {
  return (
    <Card className="bg-white">
      <CardContent>
        <Intro
          title="Today"
          description="오늘 현재 날씨를 조회하고 있습니다."
        />
        <IconAndNumber icons={sun} numbertext="19°C" />
        <div>
          <TodayFooter icons={''} numbertext="2024-11-03" />
          <TodayFooter icons={''} numbertext="Seoul-South_Korea" />
        </div>
      </CardContent>
    </Card>
  );
};

export default Today;
