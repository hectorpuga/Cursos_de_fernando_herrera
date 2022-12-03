const depool={
    nombre:'Wade',
    apellido: 'Winston',
    poder: 'regeneración',
    getNombre(){return `${this.nombre} ${this.apellido} ${this.poder}`}
};
//const nombre=depool.nombre;
//const apellido=depool.apellido;
//const poder=depool.poder;

function imprimeHeroe({nombre,apellido,poder}) {
nombre='hector';
console.log(nombre,apellido,poder);

}


//imprimeHeroe(depool);
//const {nombre,apellido,poder}=depool;
//console.log(nombre,apellido,poder);


const heroes=['Deadpool','Superman','Batman'];

//const h1=heroes[0];
//const h2=heroes[1];
//const h3=heroes[2];


const [h1,h2,h3]=heroes;
console.log(h1,h2,h3);