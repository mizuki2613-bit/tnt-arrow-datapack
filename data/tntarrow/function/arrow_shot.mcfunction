# Mark this arrow as the source projectile so its data can be copied to the summoned TNT.
tag @s add tntarrow.source
execute summon minecraft:tnt run function tntarrow:setup_projectile {arrow:"@n[tag=tntarrow.source]"}

# Remove the original arrow after its data has been transferred to the TNT.
kill
