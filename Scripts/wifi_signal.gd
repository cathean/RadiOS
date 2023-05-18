extends Node2D

const SIGNAL_BAR_SIZE = Vector2(4, 7)
const TOTAL_BAR = 4

func _draw():
	_draw_signal(34, 9, 2)
	
func _draw_signal(posX, posY, bar):
	for i in range(TOTAL_BAR):
		if i < bar:
			draw_rect(Rect2(posX + i * (SIGNAL_BAR_SIZE.x + 2), posY - i * (4), SIGNAL_BAR_SIZE.x, SIGNAL_BAR_SIZE.y + i * 4), Color.html("1BFF80"), true)
		else:
			draw_rect(Rect2(posX + i * (SIGNAL_BAR_SIZE.x + 2), posY - i * (4), SIGNAL_BAR_SIZE.x, SIGNAL_BAR_SIZE.y + i * 4), Color.html("1BFF80"), false, 1)
