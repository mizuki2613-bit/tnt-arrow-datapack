# Explode when the projectile reaches the ground.
execute if entity @s[nbt={OnGround:true}] run return run function tntarrow:explosion

# Check the projectile's surrounding blocks for collisions.
# top ( right/left )
execute positioned ^0.5 ^0.0 ^1.0 positioned ~ ~1.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^-0.5 ^0.0 ^1.0 positioned ~ ~1.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion

# middle ( center )
execute positioned ^0.0 ^0.0 ^1.0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion

# bottom ( right/left )
execute positioned ^0.5 ^0.0 ^1.0 positioned ~ ~-0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^-0.5 ^0.0 ^1.0 positioned ~ ~-0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
