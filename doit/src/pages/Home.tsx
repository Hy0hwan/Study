import Banner from '@/components/common/banner/Banner';
import Category from '@/components/common/category/Category';
import HeaderContainer from '@/components/common/header/HeaderContainer';
import SearchList from '@/components/common/search/SearchList';
import { Separator } from '@/components/ui/separator';
import { useToast } from '@/hooks/use-toast';
import { useCallback, useEffect, useState } from 'react';
import { fetchApi } from '@/stores/api';
import { useAtom } from 'jotai';
import { pageAtom, searchValueAtom } from '@/stores/atom';

const Home = () => {
  const [images, setImages] = useState([]);
  const { toast } = useToast();

  const [searchValue] = useAtom(searchValueAtom);
  const [page] = useAtom(pageAtom);

  console.log(page);

  useEffect(() => {
    fetchImages();
  }, []);

  const fetchImages = useCallback(async () => {
    try {
      const res = await fetchApi(searchValue, page);

      if (res.status === 200 && res.data) {
        setImages(res.data.results);
        toast({
          title: 'Unsplash API 호출 성공!!',
        });
      } else {
        toast({
          variant: 'destructive',
          title: 'Unsplash API 호출 실패!!',
          description: 'API 호출을 위한 필수 파라미터 값을 체크해보세요!',
        });
      }
    } catch (error) {
      console.error(error);
    }
  }, [searchValue, page, toast]); // 필요한 의존성들만 포함

  return (
    <div className="gap-5">
      <HeaderContainer />
      <Separator className="mt-2 mb-3  bg-gray-400" />
      <Category />
      <Banner />
      <div className="mx-8 mt-5 ">
        <SearchList data={images} />
      </div>
    </div>
  );
};
export default Home;
