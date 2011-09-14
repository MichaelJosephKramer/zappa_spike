@app = require('zappa') ->
  configure ->
    use 'bodyParser', 'methodOverride', app.router, 'static'

  configure
    development: -> use errorHandler: {dumpExceptions: on, showStack: on}
    production: -> use 'errorHandler'

  get '/': ->
    @title = 'zappa'
    render 'index'
