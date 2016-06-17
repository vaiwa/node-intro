
module.exports = (config) ->

	hello =
		en: 'Hello'
		cs: 'Ahoj'

	en: -> hello.en
	cs: -> hello.cs
	default: -> hello[config.lang]
