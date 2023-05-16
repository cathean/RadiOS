extends Node2D

const FRAME_SIZE = Vector2(30, 20)

func _draw():
	draw_rect(Rect2(0 , 0, FRAME_SIZE.x, FRAME_SIZE.y), Color.html("1BFF80"), false, 1)
