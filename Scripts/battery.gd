extends Node2D

const BATTERY_SIZE = Vector2(20, 13)
const BATTERY_HEAD_SIZE = Vector2(2, 5)
const BATTERY_BAR_SIZE = Vector2(4, 9)

func _draw():
	_draw_battery(60, 2, 4)
	
func _draw_battery(posX, posY, bar):
	_draw_battery_frame(posX, posY)
	
	var bar_origin_pos = Vector2(posX + BATTERY_HEAD_SIZE.x + (BATTERY_SIZE.x - BATTERY_BAR_SIZE.x), posY + 1)
	for i in range(bar):
		_draw_battery_bar(bar_origin_pos.x - i * (BATTERY_BAR_SIZE.x + 1), bar_origin_pos.y)
	
	return

func _draw_battery_frame(posX, posY):
	var head_origin_posY = (BATTERY_SIZE.y / 2) - (BATTERY_HEAD_SIZE.y / 2)
	draw_rect(Rect2(posX, posY + head_origin_posY, BATTERY_HEAD_SIZE.x, head_origin_posY), Color.html("1BFF80"))
	draw_rect(Rect2(posX + BATTERY_HEAD_SIZE.x, posY, BATTERY_SIZE.x + BATTERY_HEAD_SIZE.x, BATTERY_SIZE.y), Color.html("1BFF80"), false, 1)

func _draw_battery_bar(posX, posY):
	draw_rect(Rect2(posX, posY, BATTERY_BAR_SIZE.x, BATTERY_BAR_SIZE.y), Color.html("1BFF80"))
