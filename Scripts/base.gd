class_name Base
extends CharacterBody2D

@onready var tween = get_tree().create_tween()
var electricity_scene = preload("res://Scenes/electricity.tscn")

const GRID_SIZE = 16

# Mueve a la derecha
func move_right():
	move(1, 0)

# Mueve a la izquierda
func move_left():
	move(-1, 0)

# Mueve hacia arriba
func move_up():
	move(0, -1)

# Mueve hacia abajo
func move_down():
	move(0, 1)

func generate_electricity(position):
	var electricity_instance = electricity_scene.instantiate()
	electricity_instance.position = position
	get_parent().add_child(electricity_instance)


# Función general para moverse en la cuadrícula
func move(x, y):
	# Crear un nuevo Tween para cada movimiento
	var tween = get_tree().create_tween()

	# Posición actual
	var current_pos = position
	print(current_pos)
	
	# Nueva posición basada en el tamaño de la cuadrícula
	var target_pos = current_pos + Vector2(x * GRID_SIZE, y * GRID_SIZE)
	
	# Utilizamos el Tween para animar el movimiento
	tween.tween_property(self, "position", target_pos, 1)
	
	# Configura el tipo de transición y facilidad
	tween.set_trans(Tween.TRANS_LINEAR)
	tween.set_ease(Tween.EASE_IN_OUT)
	generate_electricity(current_pos)
