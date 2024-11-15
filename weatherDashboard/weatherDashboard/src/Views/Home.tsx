import { currentWeatherApi, fetchApi } from '@/api';
import { Header, HighLight, Houry, Map, Today, Week } from '@/components';
import { Weather } from '@/types';
import { useEffect, useState } from 'react';
const defaultWeatherData: Weather = {
  current: {
    cloud: 0,
    condition: { text: '', icon: '', code: 0 },
    dewpoint_c: 0,
    dewpoint_f: 0,
    feelslike_c: 0,
    feelslike_f: 0,
    gust_kph: 0,
    gust_mph: 0,
    heatindex_c: 0,
    heatindex_f: 0,
    humidity: 0,
    is_day: 1,
    last_updated: '',
    last_updated_epoch: 0,
    precip_in: 0,
    precip_mm: 0,
    pressure_in: 0,
    pressure_mb: 0,
    temp_c: 0,
    temp_f: 0,
    uv: 0,
    vis_km: 0,
    vis_miles: 0,
    wind_degree: 0,
    wind_dir: '',
    wind_kph: 0,
    wind_mph: 0,
    windchill_c: 0,
    windchill_f: 0,
  },
  location: {
    country: '',
    lat: 0,
    localtime: '',
    localtime_epoch: 0,
    lon: 0,
    name: '',
    region: '',
    tz_id: '',
  },
  forecast: { forecastday: [] },
};

function Home() {
  const [weatherData, setWeatherData] = useState(defaultWeatherData);
  const [currentDta, setCurrentData] = useState();

  console.log(currentDta);

  useEffect(() => {
    fetchApi().then((data) => setWeatherData(data));
    currentWeatherApi().then((data) => setCurrentData(data));
  }, []);

  return (
    <div className="page">
      <div className="page__container">
        <Header />
        <div className="w-full h-full flex flex-col   p-6">
          <div className="w-full flex items-center gap-6 mb-5">
            <Today data={currentDta} />
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
