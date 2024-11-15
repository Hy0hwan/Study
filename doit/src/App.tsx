// import { BrowserRouter, Route, Routes } from 'react-router-dom';
// import { Home } from './pages';
import { Button } from '@/components/ui';

function App() {
  console.log(Button);
  return (
    // <BrowserRouter>
    //   <Routes>
    //     <Route path="/" element={<Home />} />
    //   </Routes>
    // </BrowserRouter>

    <Button className="bg-black">ddd</Button>
  );
}

export default App;
