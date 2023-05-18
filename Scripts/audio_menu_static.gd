extends AudioStreamPlayer

# Preload sfx files
var sfx_static = preload("res://Assets/Sounds/SFX/static/ui_static_d_01.wav")

func _ready():
	var menu_button_manager = get_parent()
	menu_button_manager.screen_static.connect(_on_screen_static_sound)

func _on_screen_static_sound():
	self.stream = sfx_static
	self.play()
