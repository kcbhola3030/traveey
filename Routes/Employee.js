
import express from "express";
const router = express.Router();

import { seeEmployee, addEmployee, updateEmployee, deleteEmployee} from "../Controllers/Employee.js";


router.get('/see',seeEmployee)

router.post('/add',addEmployee)

router.put('/update/:id',updateEmployee)

router.delete('/delete/:id',deleteEmployee)

export default router;