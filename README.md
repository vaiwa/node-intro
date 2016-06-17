# Node Sbks intro
Jak pouzivame node v nasem ninja tymu

## [Node.js](https://nodejs.org/)
System postaveny nad JavaScriptovym jadrem V8 z Chrome.

Node.js uses an event loop and callbacks for scalability, instead of processes or threads. Exits the event loop when there are no further callbacks to be performed.

**php** potrebuje ke svemu spusteni webserver (Apache, Nginx), ktery standardne pro kazdy pozadavek vse nove nastartuje, postupne synchrone provede a po odpovedi vse zapomene, coz takto zni pomale a draze =)

**nodejs** je samo webserver a standardne bezi v jednom vlakne. Pro kazdy dotaz je vytvoren asynchroni event, ktery je ohendlovan az na nej prijde rada (lightweigt a vetsinou je to rychly)

### Instalace
- [nvm](https://github.com/creationix/nvm) - Node Version Manager

```bash
nvm install v4.4.4
nvm alias default v4.4.4
nvm use default
nvm ls

node -v
npm -v
```
```bash
node # REPL

echo 'console.log("Hello");' > index.js
node index.js
```

### [CoffeeScript](http://coffeescript.org/)
A little language that compiles into JavaScript.
```bash
npm i coffee-script -g

coffee -v
coffee # REPL

echo 'console.log "Hello"' > index.coffee
coffee index.coffee
```
- pryc zbytecne znaky
- funkce automaticky vraci posledni hodnotu
- ma to napr [tridy](http://coffeescript.org/#classes), super ale skoro nepouzivame =)

### [npm](https://www.npmjs.com/)
The package manager for JavaScript.
```
npm i coffee-script -g
npm i async --save
npm i coffeelint --save-dev
```
#### [package.json](https://github.com/vaiwa/node-intro/blob/master/package.json)
[semantic versioning](https://docs.npmjs.com/getting-started/semantic-versioning)
```
npm i
npm update

npm test
npm run lint
```
```
npm publish
npm version patch/minor/major
```

### [modules](https://nodejs.org/api/modules.html#modules_modules)
```coffee
# greeter.coffee
privateCau = -> 'Cau'
publicAhoj = -> 'Ahoj'
module.exports.ahoj = publicAhoj
```

```coffee
# printer.coffee
greeter = require './greeter.coffee'
console.log greeter.ahoj()
```

- requires na zacatku souboru

#### [async](https://github.com/caolan/async)
- [waterfall](https://github.com/caolan/async#waterfall)
- [parallel](https://github.com/caolan/async#parallel)
- [each](https://github.com/caolan/async#each)
- [map](https://github.com/caolan/async#map)
- retry, series, forEachOf, ....

*“error-first”* callbacks: ```(err, res) -> ...```

#### [express](http://expressjs.com/) - minimalist web framework
#### [lodash](https://lodash.com/docs#_) - utility library
#### [moment](http://momentjs.com/docs/) - vse okolu casu a timezon
#### [request](https://www.npmjs.com/package/request) - curl
#### [socketio](http://socket.io/) - web sockets

### [npm.ccl](http://npm.ccl/)
- [@sbks/adctd](http://npm.ccl/detail/@sbks/adctd)
- [@sbks/hera](http://npm.ccl/detail/@sbks/hera) - [video](https://www.youtube.com/watch?v=sadb7eps1uA)

### DBs
- [elasticsearch](https://www.npmjs.com/package/elasticsearch)
- [postgre](https://github.com/falsecz/easy-pg)
- [mongo](https://www.npmjs.com/package/mongoskin)
- [redis](https://www.npmjs.com/package/redis-url)
- [rabbitMQ](https://www.npmjs.com/package/amqplib)

## Foreman & be-environmentally-aware
- [node-foreman](http://strongloop.github.io/node-foreman/)
- [Procfile](https://github.com/vaiwa/node-intro/blob/master/Procfile)

```
nf start
```

#### [cson-config](https://www.npmjs.com/package/cson-config)
[config.cson](https://github.com/vaiwa/node-intro/blob/master/config.cson)
```
echo 'APP_PG=pgsql://user:pass@postgres1.dev1.ccl/sbks_com' > .env
```

- [envio](http://npm.ccl/detail/@sbks/envio)
- [maratonec](http://maratonec.ccl/projects/444/hera)


## Testing
- [mocha](http://mochajs.org/) - test framework
- [chai](http://chaijs.com/api/bdd/) - assertion library

## Coding Style
- Files - kebabCase ```my-favourite-file.coffee```
