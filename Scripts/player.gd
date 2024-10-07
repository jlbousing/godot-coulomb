class_name Player
extends Base

signal moved

func _ready() -> void:
	$AnimatedSprite2D.play("player")
	
	
func _physics_process(delta: float) -> void:
	if (Input.is_action_just_pressed("ui_right")):
		move_right()
		emit_signal("moved")
	if (Input.is_action_just_pressed("ui_left")):
		move_left()
		emit_signal("moved")
	if (Input.is_action_just_pressed("ui_up")):
		move_up()
		emit_signal("moved")
	if (Input.is_action_just_pressed("ui_down")):
		move_down()
		emit_signal("moved")
		
	
	
