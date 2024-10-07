class_name Led
extends Node2D

var negative = false
var positive = false
signal send_status

var sprite_light_on = preload("res://Sprites/bulb_on.png")
var game_over_scene = preload("res://Scenes/game_over.tscn")

func _on_positive_send_status() -> void:
	positive = true
	validating_status()


func _on_negative_send_status() -> void:
	negative = true
	validating_status()
	
func validating_status():
	if (positive && negative):
		if (Global.voltage == 5):
			emit_signal("send_status")
			print("se prende el led")
			$Sprite2D.texture = sprite_light_on
		else:
			print("Game over, wrong voltage:", Global.voltage)
			get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
