extends KinematicBody2D
#es el NPC que create, el pasayo


func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	pass
		


func _on_Area2D_body_entered(body):
	if(body.is_in_group("interactuar_npc")):
		Global_Dialogos.Pini = true;


func _on_Area2D_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	if(body.is_in_group("interactuar_npc")):
		Global_Dialogos.Pini = false;
