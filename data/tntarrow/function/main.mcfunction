execute as @e[type=minecraft:arrow,nbt={weapon:{components:{"minecraft:custom_data":{tntarrow:true}}}}] at @s run function tntarrow:arrow_shot

execute as @e[tag=tntarrow.projectile] at @s run function tntarrow:tick_projectile
