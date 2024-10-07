class_name Negative
extends Node2D

var status = false
signal send_status

	


func _on_area_2d_body_entered(body: Node2D) -> void:
	status = true
	print("se cambia status negativo a true")
	emit_signal("send_status")
