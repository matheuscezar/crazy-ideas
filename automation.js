const puppeteer = require('puppeteer');
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
rl.question('DIGITE O CEP:  ', resposta => {
  console.log(`Sua resposta foi: ${resposta}`);
  (async () => {
    const browser = await puppeteer.launch({ headless: false });
    const page = await browser.newPage();
    await page.goto('https://www.correios.com.br/');
    await page.evaluate(() => {
      document.querySelector('#acesso-busca').value = resposta;
      document.getElementsByClassName("bt-link-ic")[12].click;
      document.getElementsByClassName('card show-mais-acessados')[1].submit();
    });
  //  await browser.close();
  })();
  rl.close();
});
