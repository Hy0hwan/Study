import { BrowserRouter, Route, Routes } from 'react-router-dom';
import { Book, Home } from './pages';
import { Button } from '@/components/ui';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/bookmark" element={<Book />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
