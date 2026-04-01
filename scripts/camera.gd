extends Node2D

@onready var ui_manager: Node = %UIManager
@export var grid = [
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(3, 1),
	
	Vector2i(2,2), 
]
var area_position  = grid[0]

func _ready() -> void:
	ui_manager.get_right_pressed().connect(move_right)
	ui_manager.get_left_pressed().connect(move_left)
	ui_manager.get_up_pressed().connect(move_up)
	ui_manager.get_down_pressed().connect(move_down)
	#checks the grid at the startup
	grid_check()
	
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

# Checking if the next area is out of bounds and if it is, it gets rid of the 
# arrow
func grid_check():
	if !grid.has(Vector2i(area_position.x + 1, area_position.y)):
		ui_manager.set_right_active(false)
	else: 
		ui_manager.set_right_active(true)
	
	if !grid.has(Vector2i(area_position.x - 1, area_position.y)):
		ui_manager.set_left_active(false)
	else:
		ui_manager.set_left_active(true)
		
	if !grid.has(Vector2i(area_position.x, area_position.y + 1)):
		ui_manager.set_down_active(false)
	else: 
		ui_manager.set_down_active(true)
	
	if !grid.has(Vector2i(area_position.x, area_position.y - 1)):
		ui_manager.set_up_active(false)
	else:
		ui_manager.set_up_active(true)

#lets the camera move right by 1 area
func move_right():
	position.x += 320
	area_position.x += 1
	grid_check()
#lets the camera move left by 1 area	
func move_left():
	position.x -= 320
	area_position.x -= 1
	grid_check()
#lets the camera move up by 1 area
func move_up():
	position.y -= 180
	area_position.y -= 1
	grid_check()
#lets the camera move down by 1 area
func move_down():
	position.y += 180
	area_position.y += 1
	grid_check()
	
	
