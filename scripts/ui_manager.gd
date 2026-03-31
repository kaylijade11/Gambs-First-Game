extends Node

@onready var right_button: TextureButton = $RightButton
@onready var left_button: TextureButton = $LeftButton
@onready var up_button: TextureButton = $UpButton
@onready var down_button: TextureButton = $DownButton

func get_right_pressed():
	return right_button.pressed
func get_left_pressed():
	return left_button.pressed
func get_up_pressed():
	return up_button.pressed
func get_down_pressed():
	return down_button.pressed
func set_right_active(is_active: bool):
	right_button.disabled = !is_active
	right_button.visible = is_active
func set_left_active(is_active: bool):
	left_button.disabled = !is_active
	left_button.visible = is_active
func set_up_active(is_active: bool):
	up_button.disabled = !is_active
	up_button.visible = is_active
func set_down_active(is_active: bool):
	down_button.disabled = !is_active
	down_button.visible = is_active	
