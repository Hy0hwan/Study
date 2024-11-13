import { Card, CardContent, CardDescription, CardHeader } from '@/components';

const SunriseAndSunSet = () => {
  return (
    <Card className="w-full h-fit bg-neutral-50">
      <CardHeader>
        <CardDescription className="font-semibold text-neutral-700">
          일출/일몰
          <span className="text-neutral-400 font-normal ml-1">
            Sunrise & Sunset
          </span>
        </CardDescription>
      </CardHeader>
      <CardContent className="grid grid-cols-2 items-center">
        <div className="w-full flex items-center gap-2">
          <img src="/src/assets/icons/1000n.svg" alt="" className="h-14" />
          <div className="flex flex-col">
            <p className="text-sm text-muted-foreground">Sunrise</p>
            <p className="poppins-medium scroll-m-20 text-3xl font-semibold tracking-tight"></p>
          </div>
        </div>
        <div className="w-full flex items-center gap-2">
          <img src="/src/assets/icons/1240n.svg" alt="" className="h-14" />
          <div className="flex flex-col">
            <p className="text-sm text-muted-foreground">Sunset</p>
            <p className="poppins-medium scroll-m-20 text-3xl font-semibold tracking-tight"></p>
          </div>
        </div>
      </CardContent>
    </Card>
  );
};

export default SunriseAndSunSet;
