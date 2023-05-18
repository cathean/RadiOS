extends AudioStreamPlayer

# Preload sfx files
var sfx_hover_button = preload("res://Assets/Sounds/SFX/ui_tuner.wav")
var sfx_ok_button = preload("res://Assets/Sounds/SFX/ui_ok.wav")
var sfx_static = preload("res://Assets/Sounds/SFX/static/ui_static_d_01.wav")

func _ready():
	var menu_button_manager = get_parent()
	menu_button_manager.button_interact.connect(_on_button_play_sound)

func _on_button_play_sound(sound_name):
	if sfx_hover_button == null or sfx_ok_button == null:
		print("Audio Menu Button not set!")
		return
	
	if sound_name == "sfx_button_hover":
		self.stream = sfx_hover_button
	elif sound_name == "sfx_button_select":
		self.stream = sfx_ok_button
	else:
		print("Unknown sound : ", sound_name)
		return
	
	self.play()
