# Register the TNT as an active TNT Arrow projectile
data merge entity @s {Tags:[tntarrow.projectile],fuse:32767}

# Preserve the original arrow's owner so the projectile remains associated with its shooter.
$data modify entity @s owner set from entity $(arrow) Owner

# Transfer the arrow's velocity to the TNT so it follows the same trajectory.
$data modify entity @s Motion set from entity $(arrow) Motion

# Negate both rotation components so the TNT's local forward direction matches the arrow's trajectory.
$execute store result entity @s Rotation[0] float -1 run data get entity $(arrow) Rotation[0]
$execute store result entity @s Rotation[1] float -1 run data get entity $(arrow) Rotation[1]

# Store the launch position for calculating the projectile's travel distance.
execute store result score @s tntarrow.start_x run data get entity @s Pos[0]
execute store result score @s tntarrow.start_z run data get entity @s Pos[2]
