import React from 'react';

const Bike = (props) => {

    return(
        <div className="warehouses__bike__grid" key={props.bike.id}>
            <img className="warehouses__bike__grid__1" 
                src={require(`../img/${props.bike.model}.svg`)} 
                alt={props.bike.model}/>
            <div className="warehouses__bike__grid__2">
                <p className="txt">{props.bike.l_number}</p>
                {props.bike.order !== null ? 
                <p className="light-txt">Order: {props.bike.order.order_number}</p> : null}
            </div>
            <p className="warehouses__bike__grid__3 light-txt">{props.bike.updated_at}</p>
      </div> 
     
    )
}

export default Bike;