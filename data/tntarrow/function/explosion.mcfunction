# distance = x^2 + z^2
execute store result score @s tntarrow.dx run data get entity @s Pos[0]
execute store result score @s tntarrow.dz run data get entity @s Pos[2]

scoreboard players operation @s tntarrow.dx -= @s tntarrow.start_x
scoreboard players operation @s tntarrow.dz -= @s tntarrow.start_z

scoreboard players operation @s tntarrow.dx *= @s tntarrow.dx
scoreboard players operation @s tntarrow.dz *= @s tntarrow.dz

scoreboard players operation @s tntarrow.dis = @s tntarrow.dx
scoreboard players operation @s tntarrow.dis += @s tntarrow.dz

execute if score @s tntarrow.dis matches ..999 run scoreboard players set @s tntarrow.dis 999

summon minecraft:tnt_minecart ~ ~ ~ {Tags:[tntarrow.explosion],fuse:0}
execute store result entity @n[tag=tntarrow.explosion] explosion_power float 0.004 run scoreboard players get @s tntarrow.dis

kill
