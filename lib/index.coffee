csonConfig = require 'cson-config'
config = csonConfig.load "#{__dirname}/../config.cson"

hello = require('./hello.coffee') config

console.log 'en:', hello.en()
console.log 'cs:', hello.cs()
console.log 'default:', hello.default()
