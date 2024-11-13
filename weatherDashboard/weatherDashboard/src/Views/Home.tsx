import { Header, HighLight, Houry, Map, Today, Week } from '@/components';

function Home() {
  return (
    <div className="page">
      <div className="page__container">
        <Header />
        <div className="w-full h-full flex flex-col bg-black  p-6">
          <div className="w-full flex items-center gap-6 mb-5">
            <Today />
            <Houry />
            <Map />
          </div>
          <div className="w-full flex items-center gap-6">
            <HighLight />
            <Week />
          </div>
        </div>
      </div>
    </div>
  );
}

export default Home;
