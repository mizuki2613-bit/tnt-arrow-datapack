execute store result score @s tntarrow.current_x run data get entity @s Pos[0]
execute store result score @s tntarrow.current_z run data get entity @s Pos[2]

summon minecraft:tnt_minecart ~ ~ ~ {Tags:[tntarrow.explosion],fuse:0}

# explosion_power = max(999.9, (current_x - start_x) ^ 2 + (current_z - start_z) ^ 2) * 0.004
data modify entity @n[tag=tntarrow.explosion] explosion_power set compute entity @s float tntarrow:explosion_power

kill
