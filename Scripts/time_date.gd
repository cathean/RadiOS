extends Label

func _ready():
	self.text = "DD.MM.YY, HH:MM"

func _process(delta):
	self.text = _update_time_date()

func _update_time_date():
	var date_time = Time.get_datetime_dict_from_system()
	var day = date_time.day
	var month = date_time.month
	var year = str(date_time.year).substr(2, 3)
	var hour = date_time.hour
	var minute = date_time.minute
	
	var datetime_status = str(day, ".", month, ".", year, ", ", hour, ":", minute)
	return datetime_status
