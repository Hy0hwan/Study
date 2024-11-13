import { Card, CardContent, CardDescription, CardHeader } from '@/components';

const MarineAndSailing = () => {
  return (
    <Card className="w-full bg-neutral-100">
      <CardHeader>
        <CardDescription className="font-semibold text-neutral-700">
          해양 및 조수 데이터
          <span className="text-neutral-400 font-normal ml-1">
            Marine and Sailing
          </span>
        </CardDescription>
      </CardHeader>
      <CardContent className="w-full flex items-center justify-between">
        <img src="/src/assets/icons/Sunrise.svg" alt="" className="h-14" />
      </CardContent>
    </Card>
  );
};

export default MarineAndSailing;
