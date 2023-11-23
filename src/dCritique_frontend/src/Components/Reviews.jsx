import React, { useState, useEffect } from "react";
import r from "../Styles/Reviews.module.css";
import rev from "../../assets/rev.png";
import { dCritique_backend } from "../../../declarations/dCritique_backend/index";
function Reviews() {
  const [data, setData] = useState([]);

  const fetchData = async () => {
    const res = await dCritique_backend.getReview();
    setData(res);
    console.log(res)
  };

  useEffect(() => {
    fetchData();
  }, []);
  // useEffect(() => {
  //   console.log(data);
  // }, [data]);
  const reviews = data.map((a) => (
    <ul>
      <li className={r.item}>
        <div className={r.review}>
          <div className={r.imgContainer}>
            <img className={r.image} src={a.images} alt="rev" />
          </div>
          <span className={r.text}>{a.review}</span>
        </div>
        <span className={r.star}>{a.stars}⭐</span>
      </li>
    </ul>
  ));

  return (
    <>{reviews}</>
    // <ul>
    //   <li className={r.item}>
    //     <div className={r.review}>
    //       <div className={r.imgContainer}>
    //         <img className={r.image} src={rev} alt="rev" />
    //       </div>
    //       <span className={r.text}>
    //         The balisong was quite nice than expected....
    //       </span>
    //     </div>
    //     <span className={r.star}>5⭐</span>
    //   </li>
    // </ul>
  );
}

export { Reviews };
