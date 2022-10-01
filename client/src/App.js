import { useEffect } from "react";
import './App.css';

function App() {
  useEffect(() => {
    fetch("/courses")
      .then((r) => r.json())
      .then((courses) => console.log(courses));
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>Hello from react!</h1>

      </header>
    </div>
  );
}

export default App;
