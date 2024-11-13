type IconAndNumberType = {
  icons: string;
  numbertext: string;
};

const IconAndNumber = ({ icons, numbertext }: IconAndNumberType) => {
  return (
    <div className="flex flex-row ">
      <img
        src={icons}
        alt="weather icon"
        style={{ width: '150px', height: '150px' }}
      />
      <div className="text-5xl text-center justify-self-center	">
        {numbertext}
      </div>
    </div>
  );
};

export default IconAndNumber;
