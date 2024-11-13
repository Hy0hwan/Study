import { useKakaoLoader as useKakaoLoaderOrigin } from 'react-kakao-maps-sdk';

export default function useKakaoLoader() {
  useKakaoLoaderOrigin({
    appkey: '888aa632eb6eb67d82037f43be6e9156',
    libraries: ['clusterer', 'drawing', 'services'],
  });
}
