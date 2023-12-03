extends Node


@onready var camera_2d = %Camera2D


func _process(_delta):
	# 监听鼠标滚轮事件, 修改摄像机缩放
	if Input.is_action_just_pressed("mouse_wheel_up"):
		camera_2d.zoom = camera_2d.zoom * 1.2

	if Input.is_action_just_pressed("mouse_wheel_down"):
		camera_2d.zoom = camera_2d.zoom / 1.2

	# 监听鼠标中间拖动事件, 修改摄像机位置
	if Input.is_action_pressed("middle_click"):
		camera_2d.position -= Input.get_last_mouse_velocity() * 0.01
