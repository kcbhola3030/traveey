import express from 'express';

import EmployeeRoute from './Routes/Employee.js';

const app = express();
app.use(express.json());

app.use('/emp',EmployeeRoute)



app.listen(3000,()=>{
    console.log("Listening on port 3000") 
})   