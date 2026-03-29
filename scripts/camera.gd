extends Node2D

@onready var ui_manager: Node = %UIManager
## Called when the node enters the scene tree for the first time.

func _ready() -> void:
	ui_manager.get_right_pressed().connect(move_right)
	ui_manager.get_left_pressed().connect(move_left)
	ui_manager.get_up_pressed().connect(move_up)
	ui_manager.get_down_pressed().connect(move_down)
## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func move_right(): 
	position.x += 320
func move_left():
	position.x -= 320
func move_up():
	position.y -= 180
func move_down():
	position.y += 180
