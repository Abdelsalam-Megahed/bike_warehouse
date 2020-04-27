import React from 'react';
import Bike from './Bike';

const WarehouseDashboard = (props) => {

  const countBikeStatus = (bikes, filter) => 
  {    
       let count = 0;
       bikes.forEach(bike => {
           if(bike.status === filter) {
               count++;
             }
       })
      return count;
  }
   
     return(
      <div className="warehouses">
             <div className="warehouses__grid-container">
                   {props.warehouses && props.warehouses.map((warehouse) =>
                     <ul className={`warehouses__grid-container__${warehouse.id}`} key={warehouse.id}>
                       <div className="warehouses__flex" >
                         <img className="warehouses__img" src={require(`../img/${warehouse.name}.svg`)} alt={warehouse.name} />
                         <p className="warehouses__total--number">{warehouse.bikes.length}</p>
                       </div>
   
                       {props.status.map((status, index) => 
                        <div key={index}>
                            <div className="warehouses__filter warehouses__flex txt">
                              <p className="txt">{status}</p> 
                              <p className="txt">{countBikeStatus(warehouse.bikes, status)} </p>  
                            </div>
                        
                            {warehouse && warehouse.bikes.filter(bike => bike.status === status)
                            .map((bike) => 
                          
                             <Bike bike={bike} />
                             )}
                        </div> 
                         )}
                     </ul>
                   )} 
              </div>
        </div>
     )
   }

   export default WarehouseDashboard;
