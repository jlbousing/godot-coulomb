class_name Led
extends Node2D

var negative = false
var positive = false
signal send_status

var sprite_light_on = preload("res://Sprites/bulb_on.png")

func _on_positive_send_status() -> void:
	positive = true
	validating_status()


func _on_negative_send_status() -> void:
	negative = true
	validating_status()
	
func validating_status():
	if (positive && negative):
		emit_signal("send_status")
		print("se prende el led")
		$Sprite2D.texture = sprite_light_on
