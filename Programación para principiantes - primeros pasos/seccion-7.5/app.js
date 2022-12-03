



function determinarParOImpar(array) {

    for (let i = 0; i < array.length; i++) {
        if(array[i]%2===0){
            console.log(`${array[i]} es un número par`)
        }else{
            console.log(`${array[i]} es un número impar`)
        }       
    }
    
}

determinarParOImpar([1,6,8,4,2,6,10,3,5]);