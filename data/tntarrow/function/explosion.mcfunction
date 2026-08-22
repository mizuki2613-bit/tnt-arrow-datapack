# distance = x^2 + y^2 + z^2

execute store result score @s tntArrow.dx run data get entity @s Pos[0]
execute store result score @s tntArrow.dy run data get entity @s Pos[1]
execute store result score @s tntArrow.dz run data get entity @s Pos[2]

scoreboard players operation @s tntArrow.dx -= @s tntArrow.start_x
scoreboard players operation @s tntArrow.dy -= @s tntArrow.start_y
scoreboard players operation @s tntArrow.dz -= @s tntArrow.start_z

scoreboard players operation @s tntArrow.dx *= @s tntArrow.dx
scoreboard players operation @s tntArrow.dy *= @s tntArrow.dy
scoreboard players operation @s tntArrow.dz *= @s tntArrow.dz

scoreboard players operation @s tntArrow.dis = @s tntArrow.dx
scoreboard players operation @s tntArrow.dis += @s tntArrow.dy
scoreboard players operation @s tntArrow.dis += @s tntArrow.dz

execute if score @s tntArrow.dis matches ..999 run scoreboard players set @s tntArrow.dis 999

summon minecraft:tnt_minecart ~ ~ ~ {Tags:[tntArrow.explosion],fuse:0}
execute store result entity @n[tag=tntArrow.explosion] explosion_power float 0.0015 run scoreboard players get @s tntArrow.dis
kill @s
