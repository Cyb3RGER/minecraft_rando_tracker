# PopTracker/EmoTracker Pack for the Archipelago Minecraft Randomizer

A tracker pack for the [Archipelago Minecraft Randomizer Mod](https://github.com/KonoTyran/Minecraft_AP_Randomizer).

This pack supports item and location tracking as well as autotracking for most items and all locations.

To learn more about Archipelago head [here](https://archipelago.gg).

PopTracker can be found [here](https://github.com/black-sliver/PopTracker) and EmoTracker [here](https://emotracker.net).

## Autotracking

Autotracking in this pack utilizes [PopTracker's Archipelago Tracking Interface](https://github.com/black-sliver/PopTracker/blob/master/doc/AUTOTRACKING.md#archipelago-interface) and therefore is currently only aviable on PopTracker.

The pack does not autotrack the village and pillager outpost structures, as these do not have an advancement attached to them, like the nether fortress has the "A Terrible Fortress"-Advancement for example. These two structures have to be tracked manually.

## Known Issues

The pack doesn't track yet if you have enough advancements and/or dragon egg shards to reach the goal or kill the ender dragon. Therefore postgame locations might appear as "in logic" when in reality you can't reach them yet as you are still missing the necessary advancements and/or dragon egg shards.

## About 0.2.0 new features

If you want to exclude an advancement in particular (because you also can on the .yaml from Archipelago) just go to: 
/locations/locations.json and comment the advancement's visibility_rules except "showexcluded_on", these will keep appearing when using "Show Excluded: On".
