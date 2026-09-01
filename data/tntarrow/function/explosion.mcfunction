# distance = x^2 + z^2
execute store result score @s tntarrow.dx run data get entity @s Pos[0]
execute store result score @s tntarrow.dz run data get entity @s Pos[2]

# Calculate the horizontal displacement from the launch position.
scoreboard players operation @s tntarrow.dx -= @s tntarrow.start_x
scoreboard players operation @s tntarrow.dz -= @s tntarrow.start_z

# Square the displacement values to calculate distance squared without using a square root.
scoreboard players operation @s tntarrow.dx *= @s tntarrow.dx
scoreboard players operation @s tntarrow.dz *= @s tntarrow.dz

# Calculate horizontal distance squared: dx² + dz².
scoreboard players operation @s tntarrow.dis = @s tntarrow.dx
scoreboard players operation @s tntarrow.dis += @s tntarrow.dz

# Enforce a minimum distance value to guarantee a minimum explosion power.
execute if score @s tntarrow.dis matches ..999 run scoreboard players set @s tntarrow.dis 999

summon minecraft:tnt_minecart ~ ~ ~ {Tags:[tntarrow.explosion],fuse:0}
# Convert distance squared into explosion power.
# Explosion power = distance² × 0.004.
execute store result entity @n[tag=tntarrow.explosion] explosion_power float 0.004 run scoreboard players get @s tntarrow.dis

kill
