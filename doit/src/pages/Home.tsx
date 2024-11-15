import Banner from '@/components/common/banner/Banner';
import Category from '@/components/common/category/Category';
import HeaderContainer from '@/components/common/header/HeaderContainer';
import { Input } from '@/components/ui/input';
import { Separator } from '@/components/ui/separator';

const Home = () => {
  return (
    <div className="gap-5">
      <HeaderContainer />
      <Category />
      <Separator className="mt-2 mb-3  bg-gray-400" />
      {/* <Banner /> */}
      <Input />
    </div>
  );
};
export default Home;
