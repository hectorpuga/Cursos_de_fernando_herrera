

function masLargo(array){
  let nombrelargo='';
 for (let i = 0; i < array.length; i++) {
   if(array[i].length>nombrelargo.length){
     nombrelargo=array[i];
   }
 }
 
 return nombrelargo;
 }
 let heroes=['Deapool','Ciclope','Magneto','Xavier'];
 
 let heroeLargo=masLargo(heroes);
 
 console.log(heroeLargo);
 