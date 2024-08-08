extends Area2D
signal disappear

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# 处理输入事件的回调函数
func _input_event(viewport, event, shape_idx):
	# 检查是否是鼠标按下事件
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			
			print("Clicked on Area2D")
			_on_area_clicked()

# 当区域被点击时执行的逻辑
func _on_area_clicked():
	# 在这里实现点击后的逻辑，例如触发动画、播放声音等
	emit_signal("disappear") 
	get_parent().get_parent().queue_free()
	print("Area clicked, performing actions...")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
