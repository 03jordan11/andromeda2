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
			name: "Johnathon",//global.playerName,
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

function load(fileName){
	var file = file_text_open_read(fileName)
	var fileStr = file_text_read_string(file)
	var data = json_parse(fileStr)
	
	global.shipUpgrades = data.shipUpgrades
	global.inventory = data.inventory
	global.weapon = data.weapon
	global.armor = data.armor
	//time
	global.initTime = data.time.init
	global.checkedTime = data.time.checked
	//player
	global.playerName = data.player.name
	global.roomLocation = data.player.room_location
	global.xLoc = data.player.x_loc
	global.yLoc = data.player.y_loc
	global.buffs = data.player.buffs
	//starfighter
	global.starfighterLevel = data.starfighter.level
	global.enemiesDestroyed = data.starfighter.enemies_destroyed
	global.points = data.starfighter.points
	global.missionsCompleted = data.starfighter.missions_completed
	//overspace map
	global.starfighterLocX = data.map.starfighter_loc_x
	global.starfighterLocY = data.map.starfighter_loc_y
	global.locationsVisible = data.map.locations_visible
	//settings
	global.difficulty = data.settings.difficulty
	global.fullscreen = data.settings.fullscreen
	global.resolution = data.settings.resolution
	global.masterVol = data.settings.master_volume
	global.sfxVol = data.settings.sfx_volume
	global.musicVol = data.settings.music_volume
}

/*
* Gets all saves so that they can be displayed in list
* returns list of files as array of strings
*/
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

/*
*checks if the user has a previous save. If they do, the continue button 
*is highlighted indicating they can use it
*/
function canContinue(){
	return false
}