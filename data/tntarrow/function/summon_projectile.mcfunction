summon minecraft:tnt ~ ~ ~ {Tags:[tntArrow.projectile],fuse:32767}

data modify entity @n[tag=tntArrow.projectile] Motion set from entity @s Motion

# Negate both rotation components so the TNT's local forward direction matches the arrow's trajectory.
execute store result entity @n[tag=tntArrow.projectile] Rotation[0] float -1 run data get entity @s Rotation[0]
execute store result entity @n[tag=tntArrow.projectile] Rotation[1] float -1 run data get entity @s Rotation[1]

execute as @n[tag=tntArrow.projectile] store result score @s tntArrow.start_x run data get entity @s Pos[0]
execute as @n[tag=tntArrow.projectile] store result score @s tntArrow.start_z run data get entity @s Pos[2]

kill
