import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
  Separator,
} from '@/components';
import { CalendarDays, MapPinned } from 'lucide-react';

const Today = () => {
  return (
    <Card className="bg-white w-1/4 min-w-[25%]">
      <CardHeader>
        <CardTitle>Today</CardTitle>
        <CardDescription>오늘 현재 날씨를 조회하고 있습니다.</CardDescription>
      </CardHeader>
      <CardContent>
        <div className="w-full flex flex-col items-center gap-6">
          <div className="w-full h-full flex flex-col">
            <div className="flex items-center gap-1">
              <img src="/src/assets/icons/Wind.svg" alt="icon" />
              <span className="scroll-m-20 text-6xl font-extrabold">19</span>
              <span className="text-4xl font-extrabold">&#8451;</span>
            </div>
          </div>
          <Separator className="mt-2 mb-3  text-red-500" />
          <div className="w-full flex flex-col">
            <div className="flex items-center justify-start gap-2">
              <CalendarDays className="h-4 w-4" />
              <p className="leading-6">2024-11-13</p>
            </div>
            <div className="flex items-center justify-start gap-2">
              <MapPinned className="h-4 w-4" />
              <p className="leading-6">Seoul, South Korea</p>
            </div>
          </div>
        </div>
      </CardContent>
    </Card>
  );
};

export default Today;
