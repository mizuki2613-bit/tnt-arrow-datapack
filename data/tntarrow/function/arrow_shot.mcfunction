tag @s add tntarrow.source
execute summon minecraft:tnt run function tntarrow:setup_projectile {arrow:"@n[tag=tntarrow.source]"}
kill
