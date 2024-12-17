import React, { useState } from "react";

function App() {
  const [input, setInput] = useState("");
  const [result, setResult] = useState(null);
  const [error, setError] = useState(null);

  const calculateSum = async () => {
    try {
      const response = await fetch("http://localhost:3000/calculate", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ numbers: input }),
      });
      const data = await response.json();

      if (response.ok) {
        setResult(data.result);
        setError(null);
      } else {
        setError(data.error);
        setResult(null);
      }
    } catch (err) {
      setError("Something went wrong!");
    }
  };

  return (
    <div style={{ padding: "20px", textAlign: "center" }}>
      <h1>String Calculator</h1>
      <input
        type="text"
        placeholder="Enter numbers"
        value={input}
        onChange={(e) => setInput(e.target.value)}
        style={{ padding: "10px", width: "300px" }}
      />
      <br />
      <button
        onClick={calculateSum}
        style={{
          padding: "10px 20px",
          margin: "20px",
          backgroundColor: "#007BFF",
          color: "#FFF",
          border: "none",
          borderRadius: "5px",
          cursor: "pointer",
        }}
      >
        Calculate
      </button>
      {result !== null && <h2>Result: {result}</h2>}
      {error && <h2 style={{ color: "red" }}>Error: {error}</h2>}
    </div>
  );
}

export default App;
