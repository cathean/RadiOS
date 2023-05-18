extends AudioStreamPlayer

# Preload radio music files
var maybe = preload("res://Assets/Sounds/Music/The Ink Spots - Maybe.mp3")

func _ready():
	play_music()

func play_music():
	self.stream = maybe
	self.play()
