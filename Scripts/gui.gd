extends Control


func _ready() -> void:
	$VoltageContainer/Voltage.text = str(Global.voltage) + 'V'
	$StepsContainer/Steps.text = str(Global.steps)

func set_voltage(value):
	$VoltageContainer/Voltage.text = str(Global.voltage) + 'V'

func set_steps():
	$StepsContainer/Steps.text = str(Global.steps)
	
func _on_player_moved():
	if Global.steps > 0:
		Global.less_steps()
		set_steps()


func _on_resistence_send_status() -> void:
	Global.set_voltage(5)
	set_voltage(Global.voltage)
