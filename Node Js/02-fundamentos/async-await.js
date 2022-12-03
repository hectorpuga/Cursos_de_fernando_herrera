const empleados=[
    {  
        id:1,
        nombre:'Héctor'
    },
    {  
        id:2,
        nombre:'Linda'
    },
    {  
        id:3,
        nombre:'Karen'
    }

    

]

const salarios=[
    {  
        id:1,
        salario:1000
    },
    {  
        id:2,
        salario:1500
    },
    

]



const getEmpleado=(id)=>{
  
    const promesa=new Promise((resolve,reject)=>{
        const empleado=empleados.find((e)=>e.id===id)?.nombre

        if(empleado){
            resolve(empleado);
        }
        else{
            reject(`No existe empleado con id ${id}`)
        }
    });

    return promesa;
    
}


const getSalario=(id)=>{
  
    const promesa=new Promise((resolve,reject)=>{
        const salario=salarios.find((e)=>e.id===id)?.salario

        if(salario){
            resolve(salario);
        }
        else{
            reject(`No existe el salario del empleado con id ${id}`)
        }
    });

    return promesa;
    
}

const id=3;
const getInfoUsuario = async(id)=>{
    try {
        const empleado= await getEmpleado(id);
        const salario= await getSalario(id);
        return `El salario del empleado: ${empleado} es de ${salario}`;
        
    } catch (error) {
        return error;
    }
}

getInfoUsuario(id).then(
    (e)=>console.log(e)
).catch(err=>console.log(err));