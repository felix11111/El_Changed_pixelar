extends Node
#esto es un script global, para las monedas de todo

var contador = 0


func _ready():
	#se ejecuta cuando el nodo está listo
	contador = 0 #inicializa el contador a 0

func _process(delta):
	#se ejecuta cada frame
	if contador == 50: #si el contador llega a 50 monedas
		contador = 0 #restaura el contador a 0
