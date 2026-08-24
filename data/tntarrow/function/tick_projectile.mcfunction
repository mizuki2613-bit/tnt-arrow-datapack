execute if entity @s[nbt={OnGround:true}] run return run function tntarrow:explosion

# top ( center -> right -> left )
execute positioned ^0.0 ^0.0 ^1.0 positioned ~ ~1.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^0.5 ^0.0 ^1.0 positioned ~ ~1.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^-0.5 ^0.0 ^1.0 positioned ~ ~1.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion

# middle
execute positioned ^0.0 ^0.0 ^1.0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^0.5 ^0.0 ^1.0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^-0.5 ^0.0 ^1.0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion

# bottom
execute positioned ^0.0 ^0.0 ^1.0 positioned ~ ~-0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^0.5 ^0.0 ^1.0 positioned ~ ~-0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
execute positioned ^-0.5 ^0.0 ^1.0 positioned ~ ~-0.5 ~ unless block ~ ~ ~ #minecraft:replaceable run return run function tntarrow:explosion
