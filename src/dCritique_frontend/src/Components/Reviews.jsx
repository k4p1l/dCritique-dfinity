import React from "react";
import r from "../Styles/Reviews.module.css";
import rev from "../../assets/rev.png";
function Reviews() {
  return (
    <ul>
      <li className={r.item}>
        <div className={r.review}>
          <div className={r.imgContainer}>
            <img className={r.image} src={rev} alt="rev" />
          </div>
          <span className={r.text}>
            The balisong was quite nice than expected....
          </span>
        </div>
        <span className={r.star}>5⭐</span>
      </li>
    </ul>
  );
}

export { Reviews };
