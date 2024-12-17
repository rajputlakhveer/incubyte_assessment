import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App'; // import the App component

// Get the root element from the DOM
const rootElement = document.getElementById('root');

// Create a root for the React app and render the App component
const root = ReactDOM.createRoot(rootElement);
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);

// Optional: for monitoring the app's performance (you can remove this if not needed)
reportWebVitals();
