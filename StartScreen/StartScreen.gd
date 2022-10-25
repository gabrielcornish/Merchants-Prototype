extends Control


func _on_NewGameButton_pressed():
	Global.goto_scene("res://MainGame/MainGame.tscn")



func _on_ExitButton_pressed():
	get_tree().quit()

