extends Node

signal end_turn

func board_actions():
	#this is where we would put all of the board's actions
	print("currently, it is the board's turn")
	yield(get_tree().create_timer(0.4), "timeout")
	emit_signal("end_turn")
