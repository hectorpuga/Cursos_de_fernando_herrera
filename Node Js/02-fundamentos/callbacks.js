//setTimeout(() => {
//    console.log("hola mundo");
//}, 1000);


const getUsuarioById=(id,callback)=>{
const usuario={
    id,
    nombre: 'Fernando'
}

setTimeout((usuario) => {
    callback(usuario);
    
}, 1500);
}


getUsuarioById(10,()=>{
    console.log("hola mundo")
});