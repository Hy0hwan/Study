import { Input } from '../ui/input';
import cloud from '../../assets/weather/cloudy.png';

const Header = () => {
  return (
    <div style={{ display: 'flex', gap: '10px' }}>
      <div style={{ display: 'flex', fontSize: '26px', fontWeight: 'bold' }}>
        <img alt="아이콘" src={cloud} style={{ width: '50px' }} />
        <div>Weather.io</div>
      </div>
      <Input type="text" placeholder="검색어를 입력하세요" />
    </div>
  );
};

export default Header;
