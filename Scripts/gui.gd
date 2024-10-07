extends Control

@export var voltage = 9
@export var steps = 10


func _ready() -> void:
	$VoltageContainer/Voltage.text = str(voltage) + 'V'
	$StepsContainer/Steps.text = str(steps)

func set_voltage(value):
	voltage = value
	$VoltageContainer/Voltage.text = str(voltage) + 'V'

func set_steps():
	$StepsContainer/Steps.text = str(steps)
	
func _on_player_moved():
	print("hello uya")
	if steps > 0:
		steps -= 1  # Descuenta un paso
		set_steps()
