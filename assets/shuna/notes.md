# Notepad

Rigging Tutorial - https://www.youtube.com/watch?v=_zKnaVeSYhk

1. Open Blender
1. Select "New File" > "General"
1. Delete the Camera, Cube, and Light from the Collection
1. Select "Edit" > "Preferences"
1. Select "Add-ons" and make sure "Rigify" is enabled
1. Select "File" > "Import" > "Collada (.dae)(Legacy)"
1. Navigate to and select  the ".dae" file
1. Select "Import COLLADA (Legacy)"
1. Delete the included Armature
1. On the "Layout" tab, using "Object Mode", press [Shift]+[A]
1. Select "Armature" > "Rigifiy (Meta-rig)" > "Human"
1. Scale the rig to match the model
	- Press [S] to use the scale tool
	- Line up the eyes
1. Switch to "Edit Mode"
1. Select and delete the bones you do not want to animate
1. Open the side-panel for "Tools"
1. Select "X-Axis Mirror"
1. Align the bones with the body
	- Take extra time with the hands
1. Switch to "Object Mode"
1. Select the Mesh and then Shift-Select the rig
1. Press [Ctrl]+[P] and then select "Armature Deform" > "With Automatic Weights"
	- If done correctly, you can go to Pose mode and rotate a bone and the mesh should move with it
	- Press [R] to use the rotate tool
1. Select the rig and go to "Object Data Properties" (the icon is a green stick person)
1. Delete any bone collections you might have removed earlier
1. Scroll down to "Rigify" and select "Generate Rig"
1. Scale the rig to match the model (again)
	- Press [S] to use the scale tool
1. Select the Mesh and then Shift-Select the rig
1. Press [Ctrl]+[P] and then select "Armature Deform" > "With Automatic Weights"

----

If you delete the face, there is a "face" bone inside the head that needs to be removed... under spine.006.
When aligning the armature, go to  "Object Data Properties" (the icon is a green stick person) and enable "Viewport Display" > "In Front".

Bone Heat Weighting: failed to find solution for one or more bones

> For anyone who have the issue emparenting the rig and the mesh with automatic weights ("Bone heat weighting:failed to find solution for one or more bones"), just scale up the model.  It seems to be a bug in blender working this things in small scales
Scale: https://www.youtube.com/watch?v=FuiY0wtxdHQ&t=114s
