class Player
  constructor: (game, position, self, direction) ->
    player = this
    Phaser.Sprite.call player, game, 500, 500, 'player' # the values are currently hard coded

    game.physics.p2.enable player
    player.anchor.setTo 0.5, 0.5
    player.scale.setTo 0.25
    player.body.setCircle 30
