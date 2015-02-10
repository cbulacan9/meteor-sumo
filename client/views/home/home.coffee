# Game = {}



#
# Game.start = ->
#   game = new Phaser.Game(1024, 1024, Phaser.AUTO, 'gameDiv')
#   # game.state.add 'boot', Boot
#   # game.state.add 'menu', Menu
#   game.state.add 'play', Play
#   game.state.start 'play'
#
# Template.home.rendered = ->
#   Game.start()


# Play = {}

player = {}
cursors = {}

preload = ->
  game.load.image('player', 'player.png')
  game.load.image('lava', 'lava.png')

create = ->
  game.physics.startSystem Phaser.Physics.P2JS
  game.physics.p2.setImpactEvents true
  game.physics.p2.restitution = 1.0

  lava = game.add.sprite 0, 0, 'lava'
  player = game.add.sprite 500, 500, 'player'

  game.physics.p2.enable(player)

  cursors = game.input.keyboard.createCursorKeys()

  # player = new Player game, self
  # game.add.existing player

update = ->
  player.body.setZeroVelocity()
  player.body.moveLeft(400) if cursors.left.isDown
  player.body.moveRight(400) if cursors.right.isDown
  player.body.moveDown(400) if cursors.down.isDown
  player.body.moveUp(400) if cursors.up.isDown

# Player = (game, self, direction) ->
#   player = this
#   Phaser.Sprite.call player, game, 500, 500, 'player' # the values are currently hard coded
#
#   game.physics.p2.enable player
#   player.anchor.setTo 0.5, 0.5
#   player.scale.setTo 0.25
#   player.body.setCircle 30

# class Player extends Phaser.Sprite

# Player.prototype = Object.create Phaser.Sprite.prototype
# Player::constructor = Player

game = new Phaser.Game 1024, 1024, Phaser.AUTO, 'gameDiv',
  preload: preload
  create: create
  update: update
