type IntroProps = {
  title: string;
  description: string;
};

const Intro = ({ title, description }: IntroProps) => {
  return (
    <div>
      <h1>{title}</h1>
      <p>{description}</p>
    </div>
  );
};

export default Intro;
