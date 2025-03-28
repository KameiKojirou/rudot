extends Node2D


@onready var rust = RustUtils.new()
@onready var number_one = $VBoxContainer/HBoxContainer/Num1SpinBox
@onready var number_two = $VBoxContainer/HBoxContainer/Num2SpinBox
@onready var result = $VBoxContainer/HBoxContainer/LabelTotal


@onready var hellolabel = $VBoxContainer/HBoxContainer2/HelloLabel
@onready var helloLineEdit = $VBoxContainer/HBoxContainer2/HelloLineEdit
@onready var helloButton = $VBoxContainer/HBoxContainer2/HelloButton

var helloname: String = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	print(rust.multiply(6, 7))

func _on_button_pressed() -> void:
	result.text = str(rust.multiply(int(number_one.value), int(number_two.value)))

func _on_hello_button_pressed() -> void:
	hellolabel.text =str(rust.hello(helloLineEdit.text))
