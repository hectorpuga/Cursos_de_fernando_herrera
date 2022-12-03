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



// getEmpleado(4).then(empleado=> console.log(empleado)).catch(err=>console.log(err));

// getSalario(4).then(salario=> console.log(salario)).catch(err=>console.log(err));


// getEmpleado(1).then(empleado=>{
//  getSalario(1).then(salario=> {

//     console.log('El empleado',empleado,'tiene un salario',salario)
//  }).catch(err=>console.log(err));
    
// }).catch(err=>console.log(err));

const id=3;
let nombre;

getEmpleado(id).then(empleado=>{
    nombre=empleado
    return getSalario(id)}
).then(salario=>console.log('empleado:',nombre,'tiene un salario de:',salario)

).catch(
    err=>console.log(err)
)