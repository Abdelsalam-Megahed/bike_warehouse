import React from 'react';

const Filters = (props) => {

    return(
        <div className="filters">
            <ul className="filters__models">
                <li className="dropdown">
                  <a href="/#" className="dropbtn txt">All models <i className="arrow down"></i> </a>
                  <div className="dropdown-content">

                    {props.models && props.models.map((model, key) => 
                      <a onClick={() => props.getAllWarehouses( "", model)}  
                         className="txt" href="/#" key={key}>
                       <img src={require(`../img/${model}.svg`)} alt={model}/>
                        <p>{model} {model === "Curt" ? "10-speed" : null}</p> 
                      </a>                      
                      )}
                  </div>
                </li> 
           </ul>
  
           <div className="filters__sizes">
             <a onClick={() => props.getAllWarehouses("", "")} 
                href="/#" className="filters__sizes__btn button txt">All Sizes</a>

               {props.sizes && props.sizes.map((size, key) => 
              <a href="/#" onClick={() => props.getAllWarehouses(size, "")}
              className="filters__sizes__btn button txt" key={key}>{size}</a>
             )}
           </div>
        </div>
     
    )
}

export default Filters;