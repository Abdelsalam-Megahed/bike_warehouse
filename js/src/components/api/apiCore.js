const API = 'http://127.0.0.1:8000/api';


export const fetchWarehouses = (size, model) => 
 fetch(`${API}/warehouses?size=${size}&model=${model}`)
    .then(response => response.json())
    .catch(err => console.log(err));

export const fetchModels = () => 
    fetch(`${API}/models`)
    .then(response => response.json())
    .catch(err => console.log(err));

export const fetchSizes = () => 
    fetch(`${API}/sizes`)
    .then(response => response.json())
    .catch(err => console.log(err));



