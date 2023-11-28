import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import Hello from './components/home1/index'
import AppOfIcons from './example-in-class/icons/AppOfIcons';
import XmlHttpExample from './example-in-class/25-11-23/XmlHttpExample';
import FetchExample from './example-in-class/25-11-23/FetchExample';
import AxiosExample from './example-in-class/25-11-23/AxiosExample';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    {/* <App /> */}
    {/* <Hello/> */}
    {/* <AppOfIcons /> */}
    {/* <XmlHttpExample /> */}
    {/* <FetchExample /> */}
    <AxiosExample />
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
