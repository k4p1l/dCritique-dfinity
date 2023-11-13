import React from "react";
import r from "../Styles/Reviews.module.css";
function Reviews() {
  return (
    <ul>
      <li className={r.item}>
        <span className={r.review}>
          The balisong was quite nice than expected....
        </span>
        <span className={r.star}>5⭐</span>
      </li>
    </ul>
  );
}

export { Reviews };
