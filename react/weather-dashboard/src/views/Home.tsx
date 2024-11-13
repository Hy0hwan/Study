import Hourly from '@/components/box/Hourly';
import Today from '@/components/box/Today';
import Header from '@/components/shared/Header';
import { Button } from '@/components/ui/button';

function Home() {
  return (
    <div className="page text-white">
      <div className="page__container">
        <Header />
        <div>
          <Today />
          <Hourly />
          <Button>ddd</Button>
        </div>
      </div>
    </div>
  );
}

export default Home;
