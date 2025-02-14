extends Area2D

@export var player : Player

var activate: bool = true:
	set(value):
		handle_activate_state(value)
		
func handle_activate_state(state: bool):
	if(state):
		#modulate = Color.WHITE
		monitoring = true
	else:
		#modulate = Color.TRANSPARENT
		monitoring = false



func _on_body_entered(body):
	print(body)
	if(body is Entity):
		var damagable : Damagable = Damagable.new(30, player)
		body.receive_damage(damagable)
