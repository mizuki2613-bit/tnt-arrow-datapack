execute as @e[type=minecraft:arrow,nbt={weapon:{components:{"minecraft:custom_data":{tntarrow:true}}}}] at @s run function tntarrow:summon_projectile

execute as @e[tag=tntArrow.projectile] at @s run function tntarrow:check_explosion
