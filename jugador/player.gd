extends KinematicBody2D


var pixeles_por_metro : int = 70
var direccion : Vector2
var velocidad : Vector2
var rapidez : float = 5 * pixeles_por_metro
var direccion_horizonatal
var ultima_direccion : Vector2# estoy aqui
var contadorMonedas = 0

func _ready():
	pass
	
func _input(event):
	cambiar_direccion()
	
func _physics_process(delta):
		movimiento()
		cambiar_sprite()
		

func cambiar_direccion(): #para moverlo con las teclas correspondientes
	direccion.x= Input.get_axis("ui_left","ui_right")
	
	direccion.y = Input.get_axis("ui_up","ui_down")
	direccion = direccion.normalized()
	
	# Actualizar sprite actual
	
	
func cambiar_sprite(): #esto para mostrar los sprites al moverse
		# Si el personaje está parado, reproducir la animación de reposo
  # Si el personaje se está moviendo, reproducir la animación correspondiente y guardar la dirección
	if direccion.y < 0:
		# El personaje se está moviendo hacia abajo
		$AnimatedSprite.play("atras")
		ultima_direccion = direccion
	elif direccion.y > 0:
		# El personaje se está moviendo hacia arriba
		$AnimatedSprite.play("frente")
		ultima_direccion = direccion
	elif direccion.x < 0:
		# El personaje se está moviendo hacia la izquierda
		$AnimatedSprite.play("izquierda")
		ultima_direccion = direccion
	elif direccion.x > 0:
		# El personaje se está moviendo hacia la derecha
		$AnimatedSprite.play("derecha")
		ultima_direccion = direccion

	# Si el personaje está parado, mostrar el sprite de la última dirección que tuvo
	else:
		# Detener la animación
		$AnimatedSprite.stop()
		# Mostrar el primer frame de la animación correspondiente a la última dirección
		if ultima_direccion.y < 0:
			$AnimatedSprite.set_frame(1)
		elif ultima_direccion.y > 0:
			$AnimatedSprite.set_frame(0) # frente
		elif ultima_direccion.x < 0:
			$AnimatedSprite.set_frame(0) #izquierda
		elif ultima_direccion.x > 0:
			$AnimatedSprite.set_frame(1) 
			
		
		
	  
func movimiento(): #esto calcula el movimiento
		velocidad = velocidad * rapidez
		velocidad.x = direccion.x * rapidez
		velocidad.y = direccion.y * rapidez
		move_and_slide(velocidad)
		
		
func add_Coin():
	pass


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
