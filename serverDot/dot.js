
var fs = require('fs');
var http = require("http");
var url = require("url");
const port = 3030
http.createServer(function (request, response) {

    var pathname = url.parse(request.url).pathname;

    response.writeHead(200);

    if(pathname == "/") {
        html = fs.readFileSync("user-home.html", "utf8");
        response.write(html);
    } else if (pathname == "/jquery-3.3.1.min.js") {
        script = fs.readFileSync("jquery-3.3.1.min.js", "utf8");
        response.write(script);
    } else if (pathname == "/restEngine.js") {
        script = fs.readFileSync("restEngine.js", "utf8");
        response.write(script);
    } else if (pathname == '/user-i'){
		html = fs.readFileSync("user-info.html","utf8");
		response.write(html)
	}else if (pathname == '/user-p'){
		html = fs.readFileSync("user-pack.html","utf8");
		response.write(html)
	}else if (pathname == "/css/user-interface.css") {
        script = fs.readFileSync("css/user-interface.css", "utf8");
        response.write(script);
    }else if (pathname == '/site'){
		html = fs.readFileSync("site-home.html","utf8");
		response.write(html)
	}else if (pathname == '/user-pay'){
		html = fs.readFileSync("user-payment.html","utf8");
		response.write(html)
	}else if (pathname == '/user-pay1'){
		html = fs.readFileSync("user-payment1.html","utf8");
		response.write(html)
	}else if (pathname == '/user-pay2'){
		html = fs.readFileSync("user-payment2.html","utf8");
		response.write(html)
	}else if (pathname == '/user-pay3'){
		html = fs.readFileSync("user-payment3.html","utf8");
		response.write(html)
	}else if (pathname == '/user-d'){
		html = fs.readFileSync("user-delivery-option.html","utf8");
		response.write(html)
	}else if (pathname == '/site-h'){
		html = fs.readFileSync("site-home.html","utf8");
		response.write(html)
	}else if (pathname == '/site-c'){
		html = fs.readFileSync("site-confirm.html","utf8");
		response.write(html)
	}else if (pathname == '/site-p'){
		html = fs.readFileSync("site-pack-info.html","utf8");
		response.write(html)
	}else if (pathname == '/site-c'){
		html = fs.readFileSync("user-interface.html","utf8");
		response.write(html) 
	}else if (pathname == '/user-t'){
		html = fs.readFileSync("userTaskShipInfo.html","utf8");
		response.write(html)
	}else{
		console.log("Unable to reach "+pathname);
    }
    


    response.end();
}).listen(port);

console.log("Listening to server on port "+port);