extends RigidBody2D

var speed = 400  # Movement speed in pixels per second
var jump_force = -500  # Upward force when moving up
var initial_position: Vector2

func _ready() -> void:
	# Set gravity scale for faster falling
	gravity_scale = 2.0
	initial_position = position  # Store initial position
	print("Greenship Initialized")


func _physics_process(_delta: float) -> void:
	var movement = Vector2.ZERO
	
	# Handle horizontal movement
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	
	# Apply upward force when pressing up
	if Input.is_action_pressed("ui_up"):
		linear_velocity.y = jump_force
	
	# Apply horizontal movement
	movement.x = movement.x * speed
	linear_velocity.x = movement.x
