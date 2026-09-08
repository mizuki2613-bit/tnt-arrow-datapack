execute store result score @s tntarrow.dx run data get entity @s Pos[0]
execute store result score @s tntarrow.dz run data get entity @s Pos[2]

summon minecraft:tnt_minecart ~ ~ ~ {Tags:[tntarrow.explosion],fuse:0}

# max(999, (dx - start_x)^2 + (dz - start_z)^2) * 0.004
data modify entity @n[tag=tntarrow.explosion] explosion_power set compute entity @s float tntarrow:explosion_power

kill