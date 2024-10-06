class_name Player
extends Base

func _ready() -> void:
	$AnimatedSprite2D.play("player")
	
	
func _physics_process(delta: float) -> void:
	if (Input.is_action_just_pressed("ui_right")):
		move_right()
	if (Input.is_action_just_pressed("ui_left")):
		move_left()
	if (Input.is_action_just_pressed("ui_up")):
		move_up()
	if (Input.is_action_just_pressed("ui_down")):
		move_down()
	
	
