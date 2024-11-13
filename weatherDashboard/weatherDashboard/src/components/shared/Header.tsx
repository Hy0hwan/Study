import { Input } from '../ui/input';
import cloud from '../../assets/weather/cloudy.png';

const Header = () => {
  return (
    <div className="flex gap-10 mb-3.5">
      <div className="flex text-xl font-bold">
        <img alt="아이콘" src={cloud} className="w-10" />
        <div>Weather.io</div>
      </div>
      <Input type="text" placeholder="검색어를 입력하세요" className="w-2/6	" />
    </div>
  );
};

export default Header;
