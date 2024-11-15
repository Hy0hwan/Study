import axios from 'axios';
const API_KEY = '4bda9773d5ad4afd98e04902241411';
const BASE_URL = 'http://api.weatherapi.com/v1';

export const fetchApi = async () => {
  try {
    const res = await axios.get(
      `${BASE_URL}/forecast.json?q=seoul&days=7&key=${API_KEY}`
    );

    if (res.status === 200) {
      return res.data;
    }
  } catch (error) {
    console.error(error);
  } finally {
    console.log('fetchApi 호출은 되었습니다.');
  }
};

//현재 날씨 받아오는 api
export const currentWeatherApi = async () => {
  try {
    const res = await axios.get(
      `${BASE_URL}/current.json?q=seoul&days=7&key=${API_KEY}`
    );
    if (res.status === 200) {
      return res.data;
    }
  } catch (error) {
    console.log(error);
  }
};
