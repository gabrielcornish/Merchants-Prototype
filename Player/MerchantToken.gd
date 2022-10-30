extends Spatial

onready var token = $Token
onready var destination = $Position3D

var new_transform = Vector3(2,0,0)

var button_pressed = false

func _input(ev):
	if ev is InputEventKey and ev.scancode == KEY_C:
		if button_pressed == false:
			token.translation = destination.global_transform.origin
			destination.translation += new_transform
			button_pressed = true
	else:
		button_pressed = false	
