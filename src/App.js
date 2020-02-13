import React from "react";

function App() {
  return (
    <div>
      <h2>Hello {process.env.REACT_APP_HELLO}</h2>
    </div>
  );
}

export default App;
