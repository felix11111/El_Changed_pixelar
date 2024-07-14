extends Area2D

func _ready():
	$AnimationPlayer.play("modeas_animacion")


func _on_coin_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group("jugador"):
		$CollisionShape2D.disabled = true
		$AudioStreamPlayer2D.play()
		$AnimationPlayer.play("final_De_moneda")
		Global.contador += 1
		
	
		
		
		
func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
