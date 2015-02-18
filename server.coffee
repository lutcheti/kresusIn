application = module.exports = (callback) ->

    americano = require 'americano'
    initialize = require './server/init'

    options =
        name: 'kresusIn'
        port: process.env.PORT or 9876
        host: process.env.HOST or "127.0.0.1"
        root: __dirname

    americano.start options, (app, server) ->
        initialize app, server, callback

if not module.parent
    application()
