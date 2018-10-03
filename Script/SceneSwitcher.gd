extends Node

var current_scene = null
var current_path_to = null

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	$AnimationPlayer.play("Idle")

func goto_scene(path):
	current_path_to = path
	$AnimationPlayer.play("Fade in")

func _deferred_goto_scene(path):
	current_scene.free()
	var s = ResourceLoader.load(path)
	current_scene = s.instance()
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)
	$AnimationPlayer.play("Fade out")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Fade in":
		call_deferred("_deferred_goto_scene", current_path_to)
	if anim_name == "Fade out":
		$AnimationPlayer.play("Idle")
