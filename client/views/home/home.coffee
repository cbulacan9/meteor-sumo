@Game = {}

Game.start = ->
  game = new Phaser.Game(1024, 1024, Phaser.AUTO, 'gameDiv')
  # game.state.add 'boot', Boot
  # game.state.add 'menu', Menu
  game.state.add 'play', Play
  game.state.start 'play'

Template.home.rendered = ->
  Game.start()
