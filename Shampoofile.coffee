module.exports =
  
  # The "default" is run when you run "shampoo" without any arguments
  default:
    options: {}
    files:
      "./public/js/index.js": "./assets/coffee/index.coffee"

  # Run when you call "shampoo custom". Make as many custom builds as you want.
  production:
    options: {}
    files:
      "./public/js/index.js": "./assets/coffee/index.coffee"
