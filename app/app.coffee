path = require 'path'
express = require 'express'
connectAssets = require 'connect-assets'
path = require 'path'

app = express()

app.set 'port', process.env.PORT || 3000
app.set 'views', path.join(__dirname)
app.set 'view engine', 'jade'

# static map /public on the web server to the /public directory
app.use "/public", express.static(path.join(process.cwd(), 'public'))

# To use connect assets, see https://github.com/adunkman/connect-assets
app.use connectAssets(
  src: 'assets',
  helperContext: app.locals
)

# Controllers
appController = require './app/app_controller'

# Mappings
app.get '/', appController.index

# Start Express Server
app.listen app.get('port'), ->
  console.log("Express server listening on port %d in %s mode", app.get('port'), app.settings.env);
