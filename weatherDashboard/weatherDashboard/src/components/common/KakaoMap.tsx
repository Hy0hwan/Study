import { Card } from '@/components';
import { Map } from 'react-kakao-maps-sdk';
import useKakaoLoader from '@/hooks/useKakoLoader';

const KakaoMap = () => {
  useKakaoLoader();

  return (
    <Card className="w-1/4 min-w-[25%] h-full bg-none">
      <Map
        id="map"
        center={{
          lat: 37.5683,
          lng: 126.9778,
        }}
        style={{
          width: '100%',
          height: '100%',
          borderRadius: '8px',
        }}
        level={13}
      ></Map>
    </Card>
  );
};

export default KakaoMap;
