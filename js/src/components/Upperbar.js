import React from 'react';
import addIcon from '../img/icn-add.svg';

const Upperbar = () => {

    return(
        <div className="upperbar">
        <p>Warehouse</p>
        <a href="/#" className="upperbar__link">
          <img src={addIcon} alt="AddIcon"/>
        </a>
      </div>
     
    )
}

export default Upperbar;