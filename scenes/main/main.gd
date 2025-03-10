extends Node3D

var angle := 0.0
@export var orbit_radius: float = 0.4
@export var orbit_speed: float = 1.0
@onready var shuna: Node3D = $Shuna
@onready var shuna_look_at: LookAtModifier3D = $Shuna/Armature/Skeleton3D/LookAtModifier3D
@onready var rimuru: Node3D = $Rimuru

func _process(delta):

	# Update the angle
	angle -= orbit_speed * delta

	# Calculate new position
	var x = orbit_radius * cos(angle)
	var z = orbit_radius * sin(angle)

	# Update Rimuru's position
	rimuru.position = Vector3(x, rimuru.position.y, z)
	if angle < -3:
		shuna_look_at.target_node = rimuru.get_path()
	else:
		shuna_look_at.target_node = ""
	if angle < -6.0:
		angle = 0.0

	# Make Rimuru face Shuna
	var shuna_pos = shuna.global_position
	rimuru.look_at(Vector3(0, 1.3, 0))
	rimuru.rotate_y(-1.5708)
