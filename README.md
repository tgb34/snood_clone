# snood_clone
Snood clone test-named "Skrud" developed in GameMaker Studio 2

## Why

I thought it would be funny to create a snood-type game with a plot, so I spent some time hacking out the basics of how snood works before adding any of the features I'm thinking about.

7/30/2018

First commit --

v0.1.0.0
Working:
Basic files uploaded. Cannon aiming and firing works, bouncing works, collisions work (see 1)

Issues:
1. Collisions work... except for checking the skrud to the right of the current skrud. I think the issue lies in how the "staggerLeft" value works, and I need to tweak that
2. No auto adjustment for the bottom limit (lose game zone below cannon) based on difficulty/skrud amount, which means I had to manually adjust it for testing
3. Matching skruds does not delete them, and turns them into a test sprite -- will need to delete sprites and update grid accordingly
4. Skruds are too sticky upon collision -- should be able to squeeze through some gaps based on angle
5. Wall does not come down -- original choice was to make the wall a big sprite and only check a certain y coordinate as the "wall" to stop skrud collisions at, but this doesn't work for when the wall needs to move down to push the skruds closer to the game over zone near the cannon

Future Changes:
1. Only two skrud sprites created, and both look too similar to the real snood characters -- I will need to create original designs further down the line
2. I am using a one-dimensional ds_map, essentially a hashmap, to store locations of skruds and align them to the grid/push them down the screen -- perhaps a two-dimensional ds_grid could be a better structure for this game

Version Next Possible Additions:
1. "Danger" Meter next to cannon indicating snoods until wall moves down one row
2. Randomized Skrud firing
   a. "Next Skrud" preview box
3. Robot Skrud helper
4. Non-matchable skruds
5. Skruds fall
6. Skruds fall if skruds above them match and disappear

Future Additions:
1. Title Screen
2. Difficulty Select
3. Pause/Menu Button
4. "Cutscene" Scripting
   a. Dialogue Boxes/Dialogue
5. Save Game
