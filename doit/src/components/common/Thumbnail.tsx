import { useState } from 'react';
import { Card, CardContent } from '../ui/card';
import BasicImage from '@/assets/image/basicimg.avif';
import { Heart, FolderOpen } from 'lucide-react';
import { Button } from '@/components/ui/button';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '@/components/ui/dialog';

type ThumbnailProps = {
  title: string;
  imageUrl: string;
  postedDate: string;
  like: number;
};

const Thumbnail = ({ title, imageUrl, postedDate, like }: ThumbnailProps) => {
  const [modalOpen, setModalOpen] = useState(false);

  const openDialog = () => {
    setModalOpen(true);
  };

  return (
    <div>
      <Card className="overflow-hidden">
        <CardContent className="p-0 relative">
          <img
            src={imageUrl || BasicImage}
            alt={title}
            className="w-full h-48 object-cover"
          />
          <Button
            size={'icon'}
            className="absolute top-2 right-4 z-10 bg-neutral-500 bg-opacity-50 hover:bg-opacity-50"
            onClick={openDialog}
          >
            <FolderOpen className="h-5 w-5" />
          </Button>
        </CardContent>
      </Card>
      <h3 className="text-lg font-bold mt-4 mb-10 line-clamp-2 h-12">
        {title}
      </h3>
      <div className="flex justify-between items-center gap-3">
        <p className="text-sm text-gray-600">게시일 : {postedDate}</p>
        <p className="text-sm text-gray-800 flex gap-2">
          <Heart
            className="h-[14px] w-[14px] mt-[2px] text-rose-600"
            fill="#e11d48"
          />
          {like}
        </p>
      </div>

      {/* 모달 */}
      <Dialog open={modalOpen} onOpenChange={setModalOpen}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>{title}</DialogTitle>
            <DialogDescription>
              <img
                src={imageUrl || BasicImage}
                alt={title}
                className="w-full h-auto object-cover"
              />
            </DialogDescription>
          </DialogHeader>
        </DialogContent>
      </Dialog>
    </div>
  );
};

export default Thumbnail;
