import { Avatar, AvatarImage } from '@/components/ui/avatar';

const UserInfo = () => {
  return (
    <div className="flex items-center">
      <Avatar>
        <AvatarImage src="https://github.com/shadcn.png" alt="@shadcn" />
      </Avatar>
      <span className="text-lg text-black ml-2">gdiin | Doit Vue.js</span>
    </div>
  );
};

export default UserInfo;
