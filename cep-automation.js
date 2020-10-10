const axios = require('axios');
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('DIGITE O CEP: ', (answer) => {
  // TODO: Log the answer in a database
  console.log(`O CEP digitado foi: ${answer} \n`);
  axios.get('https://viacep.com.br/ws/'+answer+'/json/').then(res =>{
        console.log("Logradouro: " + res.data.logradouro);
        console.log("Complemento: " + res.data.complemento);
        console.log("Bairro: " + res.data.bairro);
        console.log("Localidade: " + res.data.localidade);
        console.log("UF: " + res.data.uf);
      });
  rl.close();
});
