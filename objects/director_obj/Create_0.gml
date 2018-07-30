/// @description Insert description here
// You can write your code in this editor

global.skoodsTilWall = 10;
global.testSnap = 0;
global.roomArray[0,0] = 0;

var paddingX = 96
var paddingY = 32
var defaultSpriteSize = 64
var testDifficulty = 0

var difficultyMap = ds_map_create();
initializeDifficulty(difficultyMap);
var dimGrid = determineInitialGridDim(difficultyMap,testDifficulty)
var spriteScale = initializeSpriteScale(dimGrid[1],dimGrid[2],defaultSpriteSize,paddingX, paddingY)

global.xScale = spriteScale[0]
global.yScale = spriteScale[1]
global.xScaled = global.xScale * defaultSpriteSize
global.yScaled = global.yScale * defaultSpriteSize

initializeRoomArray(dimGrid[0],dimGrid[1],dimGrid[2])