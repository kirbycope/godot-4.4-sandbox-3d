extends Node3D

var angle := 0.0
@export var orbit_radius: float = 0.4
@export var orbit_speed: float = 1.0
@onready var look_at: LookAtModifier3D = $Shuna/Armature/Skeleton3D/LookAtModifier3D
@onready var sphere: MeshInstance3D = $Sphere


func _process(delta):

	# Update the angle
	angle -= orbit_speed * delta

	# Calculate new position
	var x = orbit_radius * cos(angle)
	var z = orbit_radius * sin(angle)

	# Update the sphere position
	sphere.position = Vector3(x, sphere.position.y, z)
	if angle < -3:
		look_at.target_node = sphere.get_path()
	else:
		look_at.target_node = ""
	if angle < -6.0:
		angle = 0.0
