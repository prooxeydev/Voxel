module world

import server

struct WorldManager {
	server &server.Server
mut:
	worlds map[string]World
}

pub fn create_world_manager(server &server.Server) WorldManager {
	return WorldManager{server}
}

pub fn (man mut WorldManager) add_world(world World) {
	man.worlds[world.name] = world
}

pub fn (man mut WorldManager) get_world(name string) ?World {
	if !man.contains_world(name) {
		return error('World doesn\'t exists')
	}
	return man.worlds[name]
}

pub fn (man mut WorldManager) contains_world(name string) bool {
	return name in man.worlds
}

pub fn (man mut WorldManager) create_world(name string, dim Dimension) {
}