path = require 'path'
express = require 'express'
connectAssets = require 'connect-assets'

app = express()

app.set 'port', process.env.PORT || 3000
app.set 'views', path.join(__dirname)
app.set 'view engine', 'jade'
app.use connectAssets(
  src: 'public',
  helperContext: app.locals
)

# Controllers
appController = require './app/app_controller'

# Mappings
app.get '/', appController.index

# Start Express Server
app.listen app.get('port'), ->
  console.log("Express server listening on port %d in %s mode", app.get('port'), app.settings.env);
