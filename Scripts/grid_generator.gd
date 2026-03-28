extends Node

var width: int = 512
var height: int = 256

@export var area_list: Array[PackedScene]

@export var grid = [
	Vector2i(1, 1),
	Vector2i(2, 1),
	Vector2i(3, 1),
	
	Vector2i(2, 2) 
]

func _ready() -> void:
	for i in range(grid.size()):
		var area = area_list[i].instantiate()
		add_child(area)
		area.position.x = grid[i].x * width
		area.position.y = grid[i].y * height
