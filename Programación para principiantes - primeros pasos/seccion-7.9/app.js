
 
 function filtrarPorLetra(heroes,letra) {
  let subHeroes=[];
  for (let i = 0; i < heroes.length; i++) {
    if(heroes[i][0]===letra){
      subHeroes.push(heroes[i]);
    }
    
  }
  return subHeroes;
}

let heroes=['Doom','Dr. Strange','Hulk','She Hulk','Spiderman','Captain Marvel'];

let heroesCon=filtrarPorLetra(heroes,'C');

console.log(heroesCon);


