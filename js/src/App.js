import React from 'react';
import { fetchWarehouses, fetchModels, fetchSizes } from './components/api/apiCore';
import WarehouseDashboard from './components/WarehouseDashboard';
import Sidebar from './components/Sidebar';
import Upperbar from './components/Upperbar';
import Filters from './components/Filters';

import './scss/main.scss';

class App extends React.Component {

  state = {
    warehouses: [],
    bikes:[],
    models:[],
    sizes: [],
    status: ['In transit', 'Arrived'],
    sizeFilter:"",
    modelFilter:""
  }

  componentDidMount () {
    this.getAllWarehouses();
    this.getAllModels();
    this.getAllSizes();
  }

  getAllWarehouses = async (sizeFilter, modelFilter) => {
    try{  
      const results = await fetchWarehouses(sizeFilter || "", modelFilter || "");  
      const warehouses = await results.map(result => result);
      if(warehouses !== null){
        this.setState({warehouses})        
      }
    }catch(error){
      console.log( error);
   }  
  }

  getAllModels = async () => {
    try{  
      const results = await fetchModels();         
      const models = await results.map(result => result.model);         
      if(models !== null){
        this.setState({models})
      }
    }catch(error){
      console.log( error);
   }  
  }

  getAllSizes = async () => {
    try{  
      const results = await fetchSizes();         
      const sizes = await results.map(result => result.size);         
      if(sizes !== null){
        this.setState({sizes})
      }
    }catch(error){
      console.log( error);
   }  
  }

  render(){
    return (
      <div className="container">
        <Sidebar />
        <Upperbar />
        <div className="graphs">Graphs</div>
        <Filters models={this.state.models} sizes={this.state.sizes} getAllWarehouses={this.getAllWarehouses}/>
        <WarehouseDashboard warehouses={this.state.warehouses} status={this.state.status}/>
      </div>
    );
  }
}

export default App;
