extends CanvasLayer

signal button_interact
signal screen_static

@onready var screen_shader = get_node("../Shader/CRTShader")

# Menu button hovered
func _on_radio_button_mouse_entered():
	_play_sound_hover()

func _on_utility_button_mouse_entered():
	_play_sound_hover()

func _on_system_button_mouse_entered():
	_play_sound_hover()

func _on_help_button_mouse_entered():
	_play_sound_hover()

# Menu button pressed
func _on_radio_button_pressed():
	_play_sound_select()
	screen_shader.start_screen_change_anim()

func _on_utility_button_pressed():
	_play_sound_select()
	screen_shader.start_screen_change_anim()

func _on_system_button_pressed():
	_play_sound_select()
	screen_shader.start_screen_change_anim()

func _on_help_button_pressed():
	_play_sound_select()
	screen_shader.start_screen_change_anim()


func _play_sound_hover():
	emit_signal("button_interact", "sfx_button_hover")

func _play_sound_select():
	emit_signal("button_interact", "sfx_button_select")
	emit_signal("screen_static")
