import Bookmark from './BookMark';
import LogoBox from './LogoBox';
import UserInfo from './UserInfo';

const HeaderContainer = () => {
  return (
    <div className="flex justify-between items-center w-full gap-5 p-6	">
      <LogoBox />

      <div className="flex gap-5">
        <Bookmark />
        <UserInfo />
      </div>
    </div>
  );
};

export default HeaderContainer;
