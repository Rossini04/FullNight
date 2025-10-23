extends Area2D

onready var sprite  = $AnimatedSprite
onready var coin_sound = $CoinSound

var valid = 1;

func _on_Coin_body_entered(_body):
	if valid == 1:
		sprite.visible = 0
		valid = 0
		coin_sound.play()
		GameManager.get_coin ()
