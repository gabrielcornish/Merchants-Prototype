extends Node

func _ready():
	start_player_turn()

#Currently - _ready() starts the turn with the player
#start_player_turn is the Player's turn. We wait .4 seconds, then we end the turn. 
#We hit start_board_turn
#The board references "BoardActions.gd" and waits .4 seconds, then it ends the board's turn. 
#The board then passes the turn back to the player

func start_player_turn():
	var main = get_tree().current_scene
	var player = main.find_node("Player")
	player.board_actions()
	yield(player, "end_turn")
	print("the Player's turn is ending")
	start_board_turn()

func start_board_turn():
	var main = get_tree().current_scene
	var board = main.find_node("BoardActions")
	board.board_actions()
	yield(board, "end_turn")
	print("the Board's turn is ending")
	start_player_turn()
