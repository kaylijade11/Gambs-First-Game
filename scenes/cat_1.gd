extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mouse_entered.connect(cursor_change)
	pressed.connect(meow)
#TODO
func cursor_change():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func meow ():
	print ("Meow")
