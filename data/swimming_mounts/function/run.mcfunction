execute as @a[predicate=eden:entity/player_sprints_while_riding_in_water] at @s run function swimming_mounts:swim

execute as @e[type=#eden:is_mount,predicate=eden:location/in_water] run function swimming_mounts:water_movement_speed/add
execute as @e[type=#eden:is_mount,predicate=!eden:location/in_water] run function swimming_mounts:water_movement_speed/remove

schedule function swimming_mounts:run 3t