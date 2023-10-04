// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause(){
	global.pause = true
	//all objects should have state machine where they check global state
}

function unpause(){
	global.pause = false
}
