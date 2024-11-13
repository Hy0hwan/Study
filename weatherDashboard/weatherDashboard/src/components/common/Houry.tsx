import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components';

const Houry = () => {
  return (
    <Card className="bg-white flex-1 h-full max-w-[calc(50%-48px)]">
      <CardHeader>
        <CardTitle className="text-xl">Houry</CardTitle>
        <CardDescription>
          오늘의 시간대별 날씨를 조회하고 있습니다.
        </CardDescription>
      </CardHeader>
      <CardContent className="w-full flex items-start gap-4">
        <Card className=" bg-neutral-100 w-24 min-w-24 h-fit flex flex-col items-center py-[6px] gap-1 ">
          <span className="text-sm">오후 1시</span>
          <img src="/src/assets/icons/1063d.svg" alt="날씨" />
          <div className="w-full flex items-start justify-center">
            <span className="scroll-m-20 text-xl font-medium tracking-tight">
              17
            </span>
            <span className="text-[13px] ml-[1px] mt-[1px] font-medium">
              &#8451;
            </span>
          </div>
        </Card>
      </CardContent>
    </Card>
  );
};

export default Houry;
