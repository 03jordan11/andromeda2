// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(){
	var data = {
		name: "save2",
		shipUpgrades: global.shipUpgrades ,
		inventory: global.inventory,
		weapon: global.weapon,
		armor: global.armor,
		time: {
			init: global.initTime,
			checked: global.checkedTime,
			save: current_time
		},
		player: {
			name: global.playerName,
			room_location: global.roomLocation,
			x_loc: global.xLoc,
			y_loc: global.yLoc,
			buffs: global.buffs
		},
		starfighter: {
			level: global.starfighterLevel,
			enemies_destroyed: global.enemiesDestroyed,
			points: global.points,
			missions_completed: global.missionsCompleted
		},
		map: {
			starfighter_loc_x: global.starfighterLocX,
			starfighter_loc_y: global.starfighterLocY,
			locations_visible: global.locationsVisible
		},
		settings: {
			difficulty: global.difficulty,
			fullscreen: global.fullscreen,
			resolution: global.resolution,
			master_volume: global.masterVol,
			sfx_volume: global.sfxVol,
			music_volume: global.musicVol
		},
	}
	
	var file = file_text_open_write("save_file.json")
	var saveStr = json_stringify(data)
	file_text_write_string(file, saveStr)
	file_text_close(file)
}

function load(){}

function getallSaves(){
	var filelist = []
	var i = 0;
	var filename = file_find_first("*.json", 0);
	
	while (filename != ""){
		filelist[i] = filename;
		i++;
		filename = file_find_next();
	}
	file_find_close()
	return fileList
}