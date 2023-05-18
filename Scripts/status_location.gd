extends Label

func _ready():
	self.text = "Fetching Data..."

func _on_request_locationAPI_completed():
	pass
