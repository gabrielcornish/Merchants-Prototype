extends Node

#signal out_of_trader_movement_points
signal end_turn

func board_actions():
	print("Currently, it is the player's turn")
	#yield(player, "out_of_trader_movement_points")
		#The above 'yield' will hold the game at this state until we hit a certain trigger. 
		#We can stash anything we want in here, then we could have the turn advance with a signal or a button press
	yield(get_tree().create_timer(0.5), "timeout")
	emit_signal("end_turn")
