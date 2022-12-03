
function numeroMayorArreglo(array) {

    let mayor=0;

    for (let i = 0; i < array.length; i++) {
        if(mayor<=array[i]){
            mayor=array[i];
        }

    
        
    }

    return `numero mayor: ${mayor}`;
    
}

console.log(numeroMayorArreglo([0,1,6,8,4,2,7,10,2,5]));

