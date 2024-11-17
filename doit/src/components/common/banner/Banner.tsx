import { Input } from '@/components/ui/input';

const Banner = () => {
  return (
    <div
      className="w-full h-2/4 bg-cover bg-center p-20 items-center justify-center"
      style={{ backgroundImage: "url('/src/assets/image/wallpaper.png')" }}
    >
      <h2 className="text-white text-2xl font-bold p-4">
        프로젝트 01 : 어쩌구 저쩌구 어쩌구 저쩌구 어쩌구 저쩌구
      </h2>
      <span className="text-white text-2xl font-bold p-4">
        안녕하세요 어쩌고 저쩌고
      </span>
      <Input className="w-1/2" />
    </div>
  );
};

export default Banner;
