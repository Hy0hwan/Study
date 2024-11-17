import { Input } from '@/components/ui/input';
import { FaSearch } from 'react-icons/fa'; // React-Icons를 사용한 검색 아이콘

const Banner = () => {
  return (
    <div
      className="w-full h-2/4 bg-cover bg-center flex items-center justify-center p-20"
      style={{ backgroundImage: "url('/src/assets/image/wallpaper.png')" }}
    >
      <div className="flex flex-col items-start w-3/4">
        <h2 className="text-white text-5xl font-bold mb-4">
          프로젝트 01 : 오픈API를 활용한 이미지 검색 사이트 만들기
        </h2>
        <p className="text-white text-2xl mb-2">인터넷 시각자료 출처입니다.</p>
        <p className="text-white text-2xl mb-4">
          모든지역에 있는 크리에이터드르이 지원을 받습니다
        </p>
        <div className="relative w-full ">
          <div className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-500">
            <FaSearch />
          </div>
          <Input
            className="w-full pl-10"
            placeholder="원하는 이미지를 검색하세요."
          />
        </div>
      </div>
    </div>
  );
};

export default Banner;
