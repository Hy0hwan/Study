import axios from 'axios';

/** 비동기 API 호출을 처리하는 함수 */
export const fetchApi = async (searchValue: string, page: number) => {
  const API_KEY = 'xdPpSL_raqECA-2yXGgl6syIXf22TEyB3ooFpYeghQA';
  const BASE_URL = 'https://api.unsplash.com/search/photos';

  try {
    const res = await axios.get(
      `${BASE_URL}?query=${searchValue}&page=${page}&per_page=30&client_id=${API_KEY}`
    );
    return res;
  } catch (error) {
    console.error('API 호출 중 오류 발생:', error);
    throw error;
  }
};
