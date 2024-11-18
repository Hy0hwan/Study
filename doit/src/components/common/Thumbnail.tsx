import { Card, CardContent } from '../ui/card';
import BasicImage from '@/assets/image/basicimg.avif';

type ThumbnailProps = {
  title: string;
  imageUrl: string;
  postedDate: string;
  like: number;
};

const Thumbnail = ({ title, imageUrl, postedDate, like }: ThumbnailProps) => {
  return (
    <div>
      <Card className="overflow-hidden">
        <CardContent className="p-0">
          <img
            src={imageUrl || BasicImage}
            alt={title}
            className="w-full h-48 object-cover"
          />
        </CardContent>
      </Card>
      <h3 className="text-lg font-bold mt-4 mb-10 line-clamp-2 h-12">
        {title}
      </h3>
      <div className="flex justify-between items-center gap-3">
        <p className="text-sm text-gray-600">게시일 : {postedDate}</p>
        <p className="text-sm text-gray-800">{like}</p>
      </div>
    </div>
  );
};

export default Thumbnail;
