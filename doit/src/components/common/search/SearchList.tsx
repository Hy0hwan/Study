import { useState } from 'react';
import Thumbnail from '../Thumbnail';
import searchList from './data.json';

type ThumbnailData = {
  index: number;
  title: string;
  imageUrl: string;
  postedData: string;
  like: number;
};

const SearchList = () => {
  const [thumbnailData] = useState<ThumbnailData[]>(searchList.data);

  console.log('thumbnailData : ', thumbnailData);

  return (
    <div className="p-5">
      <div className="grid grid-cols-5 gap-8">
        {thumbnailData.map((data) => (
          <Thumbnail
            key={data.index}
            title={data.title}
            imageUrl={data.imageUrl}
            postedDate={data.postedData}
            like={data.like}
          />
        ))}
      </div>
    </div>
  );
};

export default SearchList;
