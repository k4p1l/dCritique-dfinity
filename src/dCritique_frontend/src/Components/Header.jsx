import React, { useEffect, useState } from "react";
import { Form } from "./Form";
import { Reviews } from "./Reviews";
import h from "../Styles/Header.module.css";
function Header() {
  const [showForm, setShowForm] = useState(false);
  return (
    <div className={`${h.container} ${h.noise}`}>
      <h2> dCritique </h2>
      <button className={h.AddBtn} onClick={() => setShowForm((show) => !show)}>
        {showForm ? "Close" : "Add a Review"}
      </button>
      {/* <Form showForm={showForm} setShowForm={setShowForm} /> */}
      {!showForm ? "" : <Form />}
      <Reviews />
    </div>
  );
}

export { Header };
