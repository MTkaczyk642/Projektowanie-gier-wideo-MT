extends Node
var sayHallo = "Hello Hello"
var firstNumber = 118378
var secondNumber = 1738718

var welcomes = ["Czesc", "Hello", "Guten Tag"]
var names = ["Jan", "John", "Manuel"]

func _ready():
	print ("Hello world")
	print (2+7)
	print ("2+7")
	print ("2" + "7")
	print (sayHallo)
	print (firstNumber * secondNumber)
	print (welcomes[1] + " my name is " + names[1])
	print (welcomes[2] + " ich heisse " + names[2])
	print (names[0])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
