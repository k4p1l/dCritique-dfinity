import React, { useEffect, useState } from "react";
import { Header } from "./Components/Header";
import { BrowserRouter,Routes, Route } from 'react-router-dom';
import { UploadFile } from "./Components/UploadFile";

function App() {
  const [showForm, setShowForm] = useState(false);
  return (
    <Header/>
    // <>
    //   <BrowserRouter>
    //     <Routes>
    //       <Route exact path="/" element={<UploadFile />} />
    //     </Routes>
    //   </BrowserRouter>
    // </>
  );
}

export default App;
