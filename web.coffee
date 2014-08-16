ppo = require 'gzippo'
express = require 'morgan'

app = express()
app.use express 'dev'
app.use gzippo.staticGzip "#{__dirname}/dist"
app.listen process.env.PORT || 5000
