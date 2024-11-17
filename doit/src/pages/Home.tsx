import Banner from '@/components/common/banner/Banner';
import Category from '@/components/common/category/Category';
import HeaderContainer from '@/components/common/header/HeaderContainer';
import SearchList from '@/components/common/search/SearchList';
import { Separator } from '@/components/ui/separator';

const Home = () => {
  return (
    <div className="gap-5">
      <HeaderContainer />
      <Separator className="mt-2 mb-3  bg-gray-400" />
      <Category />
      <Banner />
      <div className="mx-8 mt-5 ">
        <SearchList />
      </div>
    </div>
  );
};
export default Home;
