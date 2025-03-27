extends Node2D


@onready var rust = RustUtils.new()
@onready var number_one = $HBoxContainer/Num1SpinBox
@onready var number_two = $HBoxContainer/Num2SpinBox
@onready var result = $HBoxContainer/LabelTotal

# Called when the node enters the scene tree for the first time.
func _ready():
	print(rust.multiply(6, 7))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	result.text = "calculated: " + str(rust.multiply(int(number_one.value), int(number_two.value)))
