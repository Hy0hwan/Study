import { Card } from '@/components';

type timeWeatherData = {
  time: string;
  icons: string;
  temp: string;
};

type data = {
  data: timeWeatherData;
};

const TimeWeather = ({ data }: data) => {
  return (
    <Card className=" bg-neutral-100 w-24 min-w-24 h-fit flex flex-col items-center py-[6px] gap-1 ">
      <span className="text-sm">{data.time}</span>
      <img src={data.icons} alt="날씨" />
      <div className="w-full flex items-start justify-center">
        <span className="scroll-m-20 text-xl font-medium tracking-tight">
          {data.temp}
        </span>
        <span className="text-[13px] ml-[1px] mt-[1px] font-medium">
          &#8451;
        </span>
      </div>
    </Card>
  );
};

export default TimeWeather;
