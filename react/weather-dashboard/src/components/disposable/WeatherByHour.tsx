import sun from '../../assets/weather/sun.png';
import moon from '../../assets/weather/moon.png';

const WeatherByHour = () => {
  const hourlyWeather = [
    { time: '00:00', icon: moon, temperature: '12°C' },
    { time: '01:00', icon: moon, temperature: '11°C' },
    { time: '02:00', icon: moon, temperature: '11°C' },
    { time: '03:00', icon: moon, temperature: '10°C' },
    { time: '04:00', icon: moon, temperature: '10°C' },
    { time: '05:00', icon: moon, temperature: '9°C' },
    { time: '06:00', icon: sun, temperature: '10°C' },
    { time: '07:00', icon: sun, temperature: '12°C' },
    { time: '08:00', icon: sun, temperature: '12°C' },
    { time: '09:00', icon: sun, temperature: '12°C' },
    { time: '10:00', icon: sun, temperature: '12°C' },
    { time: '11:00', icon: sun, temperature: '12°C' },
    { time: '12:00', icon: sun, temperature: '12°C' },
    { time: '13:00', icon: sun, temperature: '12°C' },
    { time: '14:00', icon: sun, temperature: '12°C' },
    { time: '15:00', icon: sun, temperature: '12°C' },
    { time: '16:00', icon: sun, temperature: '12°C' },
    { time: '17:00', icon: sun, temperature: '12°C' },
    { time: '18:00', icon: sun, temperature: '12°C' },
    { time: '19:00', icon: moon, temperature: '12°C' },
    { time: '20:00', icon: moon, temperature: '12°C' },
    { time: '21:00', icon: moon, temperature: '12°C' },
    { time: '22:00', icon: moon, temperature: '12°C' },
    { time: '23:00', icon: moon, temperature: '12°C' },
  ];

  return (
    <div
      style={{
        display: 'flex',
        flexDirection: 'row',
        flexWrap: 'wrap',
        gap: '10px',
      }}
    >
      {hourlyWeather.map((hour, index) => (
        <div
          key={index}
          style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            width: '100px',
            border: '1px solid #333333',
          }}
        >
          <div>{hour.time}</div>
          <div style={{ width: '30px', height: '30px' }}>
            <img
              src={hour.icon}
              alt="weather icon"
              style={{ width: '100%', height: '100%' }}
            />
          </div>
          <div>{hour.temperature}</div>
        </div>
      ))}
    </div>
  );
};

export default WeatherByHour;
