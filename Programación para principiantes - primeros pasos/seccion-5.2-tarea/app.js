// Crear una funcipon que mej permita determinar
// la calificación de 3 alumnos
// uno con nota de 100, otro con nota de 80
// y el último con nota de 59

function calcularNota(nota){
let notaLetra='';
if(nota>=90 && nota<=100){
    notaLetra='A';
}else if(nota>=80 && nota<=89){
    notaLetra='B';
}else if(nota>=70 && nota<=79){
    notaLetra='C';
}else if(nota>=60 && nota<=69){
    notaLetra='D';
}
else{
    notaLetra='F';
}

console.log(nota + ' es igual a '+notaLetra);
}


calcularNota(100);
calcularNota(80);
calcularNota(59);


