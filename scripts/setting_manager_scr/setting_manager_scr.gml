// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setFullscreen(isFullscreen){
	window_set_fullscreen(isFullscreen)
}

function setResolution(width, height){
	window_set_size(width, height)
}

function initialResolution(){
	window_set_size(display_get_width(), display_get_height())
}

function setVolume(volType, vol){
	//get all sound files that are of type volType
	
	//set vol of sound files to vol
}

function setDifficulty(diff){
	global.difficulty = diff
}