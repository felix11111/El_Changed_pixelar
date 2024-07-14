extends Control
#es es el del control

const icopini = preload("res://NPC/vedad_npc/portraits_face_base-removebg-preview.png")
var chat:int = 0;

func _activar(TEXTO:String, IMAGEN:Texture) -> void:
	$CanvasLayer.show();
	$CanvasLayer/RichTextLabel.text = TEXTO;
	$CanvasLayer/AnimationPlayer.play("escribir_animacion")
	$CanvasLayer/TextureRect.texture = IMAGEN;
	
	
func _process(delta):
	#es pini
	pass
		
	
	
	#verifico que si los cahts son mayores a los dialogos, se cierra
func _cambair() -> void:
	pass


func _on_Area2D_body_entered(body):
	if(Global_Dialogos.Pini == true):
		_activar(Global_Dialogos.dialogo_p1.Pini.pd[chat], icopini)



func _on_Area2D_body_exited(body):
	if(Global_Dialogos.Pini == true):
		$CanvasLayer.hide()


func _on_Button_pressed():
		chat += 1;
		if(chat == Global_Dialogos.dialogo_p1.Pini.pd.size()):
			chat = 0;
			$CanvasLayer.hide()
		_activar(Global_Dialogos.dialogo_p1.Pini.pd[chat], icopini)
