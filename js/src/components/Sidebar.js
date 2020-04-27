import React from 'react';
import logo from '../img/heading-avatar.svg';

const Sidebar = () => {

    return(
        <div className="sidebar">
            <img src={logo} alt="Logo" />
            <ul className="nav">
                <li className="nav__item"><a href="/#" className="nav__link">Dashboard</a></li>
                <li className="nav__item"><a href="/#" className="nav__link">Order Registry</a></li>
                <li className="nav__item"><a href="/#" className="nav__link">Logout</a></li>
            </ul>
      </div>
     
    )
}

export default Sidebar;