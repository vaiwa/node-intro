kratky 5 - 15 min - utery
https://strongloop.com/node-js/certification/scnd-study-guide/


# Node Sbks intro
Jak pouzivame node v nasem ninja tymu

## [Node.js](https://nodejs.org/)
System postaveny nad JavaScriptovym jadrem V8 z Chrome.

Node.js uses an event loop for scalability, instead of processes or threads. In contrast to other event-driven servers, Node.js's event loop does not need to be called explicitly. Instead callbacks are defined, and the server automatically enters the event loop at the end of the callback definition. Node.js exits the event loop when there are no further callbacks to be performed.

- php potrebuje ke svemu spusteni webserver (Apache, Nginx), ktery standardne pro kazdy pozadavek vse nove nastartuje, postupne synchrone provede co je potreba a po odpovedi vse zapomene, coz zni draze =)
- nodejs je samo webserver a standardne bezi v jednom v jednom vlakne a pro kazdy dotaz je jen vytvoren asynchroni event, ktery je ohendlovan az na nej prijde rada (lightweigt a vetsinou je to rychly)

### Instalace
- [nvm](https://github.com/creationix/nvm) - Node Version Manager
```
nvm install v4.4.4
nvm alias default v4.4.4
nvm use default
nvm ls

node -v
npm -v

node # REPL

cat console.log('Hello') >> index.js
node index.js
```

### [CoffeeScript](http://coffeescript.org/)
A little language that compiles into JavaScript.
```
npm i coffee-script -g
coffee -v

coffee # REPL

cat console.log 'Hello' >> index.coffee
coffee index.coffee
```
- ma to napr [tridy](http://coffeescript.org/#classes), super ale skoro nepouzivame =)

### [npm](https://www.npmjs.com/)
The package manager for JavaScript.
```
npm i coffee-script -g
npm i async --save
npm i coffeelint --save-dev
npm update
```

#### [package.json](https://github.com/vaiwa/node-intro/blob/master/package.json)

```
npm test
npm run lint
```
```
npm publish
npm version patch/minor/major
```


### [async](https://github.com/caolan/async)
- [waterfall](https://github.com/caolan/async#waterfall)
- [parallel](https://github.com/caolan/async#parallel)
- [each](https://github.com/caolan/async#each)
- [map](https://github.com/caolan/async#map)
- retry, series, forEachOf, ....

### [express](http://expressjs.com/) - minimalist web framework
### [lodash](https://lodash.com/docs#_) - utility library
### [moment](http://momentjs.com/docs/) - vse okolu casu a timezon
### [request](https://www.npmjs.com/package/request) - curl
### [socketio](http://socket.io/) - web sockets

## Testing
- [mocha](http://mochajs.org/)
- [chai](http://chaijs.com/api/bdd/)

## Foreman & be-environmentally-aware

https://blog.heroku.com/archives/2015/11/10/node-habits-2016#6-be-environmentally-aware

[node-foreman](http://strongloop.github.io/node-foreman/)
[cson-config](https://www.npmjs.com/package/cson-config)

[envio](http://npm.ccl/detail/@sbks/envio)
[maratonec](http://maratonec.ccl/projects/444/hera)

## 
Files kebabCase: my-class.coffee


http://nodeschool.io/



STEP1 

Expressi appka co bude na route vracet 