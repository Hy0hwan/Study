type IconAndNumberType = {
  icons: string;
  numbertext: string;
};

const IconAndNumber = ({ icons, numbertext }: IconAndNumberType) => {
  return (
    <div>
      <img
        src={icons}
        alt="weather icon"
        style={{ width: '150px', height: '150px' }}
      />
      <div>{numbertext}</div>
    </div>
  );
};

export default IconAndNumber;
