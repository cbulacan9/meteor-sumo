@Play = {}

Play.preload = ->
  @game.load.image('player', 'player.png')
  @game.load.image('lava', 'lava.png')

Play.create = ->
  game.physics.startSystem Phaser.Physics.P2JS
  game.physics.p2.setImpactEvents true
  game.physics.p2.restitution = 1.0

  lava = game.add.sprite 0, 0, 'lava'
  
