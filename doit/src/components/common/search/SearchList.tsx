import Thumbnail from '../Thumbnail';
import { ImageDataType } from '@/types';

type ThumbnailData = {
  data: ImageDataType[];
};

const SearchList = ({ data }: ThumbnailData) => {
  console.log('data : ', data);
  return (
    <div className="p-5">
      <div className="grid grid-cols-5 gap-5">
        {data.map((data) => (
          <Thumbnail
            key={data.id}
            title={data.alt_description}
            imageUrl={data.urls.small}
            postedDate={data.created_at.split('T')[0]}
            like={data.likes}
          />
        ))}
      </div>
    </div>
  );
};

export default SearchList;
