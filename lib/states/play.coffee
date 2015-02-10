@Play = {}

Play.preload = ->
  @game.load.image('player', 'player.png')
  @game.load.image('lava', 'lava.png')

Play.create = ->
  @game.physics.startSystem Phaser.Physics.P2JS
  @game.physics.p2.setImpactEvents true
  @game.physics.p2.restitution = 1.0

  lava = @game.add.sprite 0, 0, 'lava'

  player = new Player @game, self
  @game.add.existing player

Player = (game, self, direction) ->
  player = this
  Phaser.Sprite.call player, game, 500, 500, 'player' # the values are currently hard coded

  game.physics.p2.enable player
  player.anchor.setTo 0.5, 0.5
  player.scale.setTo 0.25
  player.body.setCircle 30

# class Player extends Phaser.Sprite

# Player.prototype = Object.create Phaser.Sprite.prototype
# Player::constructor = Player
