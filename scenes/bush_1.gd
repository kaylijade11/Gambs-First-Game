class_name ButtonPressed extends TextureButton
@onready var cat_1: TextureButton = $Cat1
const BEHIND_INDEX: int = -1
const FRONT_INDEX: int = +1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cat_1.z_index = BEHIND_INDEX
	pressed.connect(reveal_cat) 
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	pass
#Reveals the cat and makes the cat pettable also makes the bush not animate	
func reveal_cat():
	cat_1.z_index = FRONT_INDEX
	mouse_filter = MOUSE_FILTER_IGNORE 
	cat_1.mouse_filter = MOUSE_FILTER_STOP
	print("Cat Reveal")
	
