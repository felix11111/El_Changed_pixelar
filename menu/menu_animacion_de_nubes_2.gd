extends ParallaxLayer


var direc = Vector2(1,0)
var velocidad = 30

func _process(delta):
	motion_offset += direc * velocidad * delta
