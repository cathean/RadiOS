extends Node2D

const HORIZONTAL_LINE_LENGTH = 120
const VERTICAL_LINE_LENGTH = 50

func _draw():
	_draw_freq_line(240, 200)

func _draw_freq_line(posX, posY):
	draw_line(Vector2(posX - HORIZONTAL_LINE_LENGTH, posY), Vector2(posX + HORIZONTAL_LINE_LENGTH, posY), Color.html("1BFF80"), 2.0)
	_draw_horizontal_freq_grid(posX - HORIZONTAL_LINE_LENGTH, posY, 5, 3)
	
	var newPosX = posX + HORIZONTAL_LINE_LENGTH
	var newPosY = posY - VERTICAL_LINE_LENGTH
	draw_line(Vector2(newPosX, newPosY - VERTICAL_LINE_LENGTH), Vector2(newPosX, newPosY + VERTICAL_LINE_LENGTH), Color.html("1BFF80"), 2.0)
	_draw_vertical_freq_grid(newPosX, newPosY - VERTICAL_LINE_LENGTH, 5, 3)

func _draw_horizontal_freq_grid(posX, posY, length, length_offset):
	var space = HORIZONTAL_LINE_LENGTH / 10
	
	for i in range(0, 20):
		if i % 5 == 0:
			draw_line(Vector2(posX + i * space, posY), Vector2(posX + i * space, posY - length - length_offset), Color.html("1BFF80"), 2.0)
		else:
			draw_line(Vector2(posX + i * space, posY), Vector2(posX + i * space, posY - length), Color.html("1BFF80"), 2.0)

func _draw_vertical_freq_grid(posX, posY, length, length_offset):
	var space = HORIZONTAL_LINE_LENGTH / 10	
	
	for i in range(0, 8):
		if i % 5 == 0:
			draw_line(Vector2(posX, posY + i * space), Vector2(posX - length - length_offset, posY + i * space), Color.html("1BFF80"), 2.0)
		else:
			draw_line(Vector2(posX, posY + i * space), Vector2(posX - length, posY + i * space), Color.html("1BFF80"), 2.0)
			pass
