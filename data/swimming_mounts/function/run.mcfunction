execute as @a[predicate=eden:entity/player_sprints_while_riding_in_water] at @s run function swimming_mounts:swim

execute as @a[predicate=!eden:entity/mount_in_water] on vehicle run data modify entity @s NoGravity set value 0b

execute as @a[predicate=eden:entity/mount_in_water] on vehicle run effect give @s water_breathing 1 1 true
execute as @a[predicate=eden:entity/mount_in_water] at @s on vehicle unless block ^ ^ ^1 water run data modify entity @s NoGravity set value 0b
execute as @a[predicate=eden:entity/mount_in_water] at @s on vehicle if block ^ ^ ^1 water run data modify entity @s NoGravity set value 1b

execute as @e[type=#eden:is_mount] at @s unless entity @e[type=player,distance=..2] run data modify entity @s NoGravity set value 0b

schedule function swimming_mounts:run 3t