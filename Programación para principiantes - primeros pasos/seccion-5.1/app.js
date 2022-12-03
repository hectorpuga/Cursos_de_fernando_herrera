function imprimirTabla(base, limite) {
  for (let i = 1; i <= limite; i++) 
    console.log(`${base} X ${i} = ${base * i}`);
  
}

imprimirTabla(10,5);
imprimirTabla(3,10);
