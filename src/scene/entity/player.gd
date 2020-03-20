extends RigidBody2D


var force_impulse=64
var can_move=false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		move(Vector2(0,-1))

func move(dir:Vector2):
	if can_move:
		apply_central_impulse(dir*force_impulse)
		can_move=false


func _on_area_reset_body_entered(body):
	can_move=true
