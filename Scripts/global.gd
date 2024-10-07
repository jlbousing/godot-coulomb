extends Node

var voltage = 9
var steps = 20
var game_over_scene = preload("res://Scenes/game_over.tscn")

func less_steps():
	steps -= 1
	if steps <= 0:
		game_over()

func set_voltage(value):
	voltage = value
	
func game_over():
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
