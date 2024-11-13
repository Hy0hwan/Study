import { Card, CardContent, CardDescription, CardHeader } from '@/components';

type DataCard = {
  title_kr: string;
  title_en: string;
  value: number;
  icon: string;
  symbol: string;
};

type Props = {
  data: DataCard;
};

const DataCard = ({ data }: Props) => {
  return (
    <Card className="w-full h-fit bg-neutral-50">
      <CardHeader>
        <CardDescription className="font-semibold text-neutral-700">
          {data.title_kr}
          <span className="text-neutral-400 font-normal ml-1">
            {data.title_en}
          </span>
        </CardDescription>
      </CardHeader>
      <CardContent className="flex items-center justify-between">
        <img src={data.icon} alt="" className="h-10 w-10" />
        <p className="poppins-medium scroll-m-20 text-3xl font-semibold tracking-tight">
          {data.value}
          <span className="text-lg ml-1">{data.symbol}</span>
        </p>
      </CardContent>
    </Card>
  );
};

export default DataCard;
