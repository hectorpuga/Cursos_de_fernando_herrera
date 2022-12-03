
function imprimirTabla(array,limite){
    let tabla=[];
    let linea='';
    for (let i = 1; i <= limite; i++) {
        for (let j = 0; j < array.length; j++) {
          linea+=`${array[j]*i} `;
        }
        tabla.push(linea);
        linea='';
    }

    for (let i = 0; i < tabla.length; i++) {
       console.log(tabla[i])
        
    }
}

imprimirTabla([1,2,3,4,5],5);


