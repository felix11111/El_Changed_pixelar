extends KinematicBody2D


var pixeles_por_metro : int = 24
var direccion : Vector2
var velocidad : Vector2
var rapidez : float = 5 * pixeles_por_metro

func _ready():
	pass
	

	
func _input(event):
	cambiar_direccion()

func cambiar_direccion():
	direccion.x= Input.get_axis("ui_left","ui_right")
	direccion.y = Input.get_axis("ui_down","ui_up")
	
	direccion = direccion.normalized()



func _physics_process(delta):
		velocidad.x = direccion.x * rapidez
		velocidad.y = direccion.y * rapidez
		
	
func movimiento():
	pass

	
	
	

