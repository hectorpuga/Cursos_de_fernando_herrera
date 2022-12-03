
class Carro{
 
    constructor(marca,tipo,puertas){

        this.marca=marca;
        this.tipo=tipo;
        this.puertas=puertas;
        this.creadoEn='hoy';
        this.encendido=false;
        this.gasolina=100;
    }

    encenderCarro(){

        if(this.encendido){

            console.error('El carro ya estaba encendido... se daño el motor');
        }else{
            this.encendido=true
        console.log('El carro esta encendido')}
    }

    realizarViaje(consumo){

        if(!this.encendido){
            console.log('No se puede realizar viaje, el carro esta apagado')
        }
        else if(this.gasolina<=0){
            console.log('No se puede realizar viaje, el carro esta sin gasolina suficiente');
        }
        else{

            this.gasolina-=consumo;
            console.log(`Le queda ${this.gasolina}`);
        }
    }

}

let carro=new Carro('Mazda','Sedan',2);
carro.encenderCarro();

carro.realizarViaje(100);


console.log(carro);
