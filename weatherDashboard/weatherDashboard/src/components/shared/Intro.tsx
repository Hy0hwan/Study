type IntroProps = {
  title: string;
  description: string;
};

const Intro = ({ title, description }: IntroProps) => {
  return (
    <div>
      <div className="font-bold	 text-2xl">{title}</div>
      <div>{description}</div>
    </div>
  );
};

export default Intro;
