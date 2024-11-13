import Hourly from '@/components/box/Hourly';
import Today from '@/components/box/Today';
import Header from '@/components/shared/Header';
import { Input } from '@/components/ui/input';

function Home() {
  return (
    <div className="page">
      <div className="page__container">
        <header className="w-full h-20 flex items-center p-6 gap-6 bg-neutral-600">
          <div className="w-1/2 flex items-center gap-6 justify-start">
            <div className="h-full flex items-start justify-center gap-2">
              {/* 아이콘 */}
              <img src="" alt="logo" />
              {/* 폰트로고 */}
              <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight">
                The Joke Tax
              </h3>
            </div>
            <div>
              <Input type="text" placeholder="검색어를 입력해주세요." />
            </div>
          </div>
        </header>
      </div>
    </div>
  );
}

export default Home;
