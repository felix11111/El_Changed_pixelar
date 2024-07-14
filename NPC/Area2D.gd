extends Area2D



func _ready():
	$AnimationPlayer.play("cultivador")




func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	pass # Replace with function body.
