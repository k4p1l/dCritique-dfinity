import React, { useEffect, useState } from "react";
import { IoStarSharp } from "react-icons/io5";
import f from "../Styles/styles.module.css";

const colors = {
  orange: "#ffff00",
  grey: "#FEFDEC",
};

function Form() {
  const [currentValue, setCurrentValue] = useState(0);
  const [hoverValue, setHoverValue] = useState(undefined);
  const stars = Array(5).fill(0);

  const handleClick = (value) => {
    setCurrentValue(value);
  };

  const handleMouseOver = (newHoverValue) => {
    setHoverValue(newHoverValue);
  };

  const handleMouseLeave = () => {
    setHoverValue(undefined);
  };
  return (
    <>
      <div className={f.header}>
        <div className={f.stars}>
          {stars.map((_, index) => {
            return (
              <IoStarSharp
                key={index}
                size={48}
                onClick={() => handleClick(index + 1)}
                onMouseOver={() => handleMouseOver(index + 1)}
                onMouseLeave={handleMouseLeave}
                color={
                  (hoverValue || currentValue) > index
                    ? colors.orange
                    : colors.grey
                }
                className={{
                  marginRight: 10,
                  cursor: "pointer",
                }}
              />
            );
          })}
        </div>
        <div className={f.inputContainer}>
          <textarea
            className={f.input}
            placeholder="Share your Review..."
          ></textarea>
        </div>
      </div>
      <div className={f.buttons}>
        <button className={f.Btn}>Submit</button>
      </div>
    </>
  );
}

export { Form };
