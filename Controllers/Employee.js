import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()



export const seeEmployee = async(req,res)=>{
    try {
        const employees=  await prisma.employee.findMany();
        res.status(200).send(employees);
        
    } catch (error) {
        res.status(400).send(error);
    }
}

export const addEmployee = async(req,res)=>{
    const {name, email,phone,hireDate, position} = req.body
        const newUser = prisma.employee.create({
            data:{
                name,
                email,
                phone,
                hireDate,
                position,
                
            }
        })
        .then((e)=>{

            console.log(newUser);
            res.status(200).send("User created");
            console.log(e);

        })
        .catch((error)=>{
            
            res.status(401).send(error.message);
        })
    
}

export const updateEmployee = async(req,res)=>{
    const {id} = req.params 
    const {email}   = req.body
    const user = await prisma.employee.update({
        where: { eId: Number(id) },
        data: { email:email }
      })
      .then(()=>{ 
       return res.status(200).send("User email updated");
      })
      .catch((e)=>{ 
       return console.log(e.message)   
      })
}

export const deleteEmployee = async(req,res)=>{
    const {id} = req.params 
    const user = await prisma.employee.delete({
        where: { eId:Number(id) },
      }) 
      .then(()=>{ 
       return res.status(200).send("User Deleted");
      })
      .catch((e)=>{ 
       return console.log(e.message)   
      })
}