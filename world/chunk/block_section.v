module chunk

struct BlockSection {
mut:
	blocks []i64
}

pub fn create_block_section() &BlockSection {
	return &BlockSection{[]i64{len:16*16+16, cap: 16*16, default: 0}}
}

pub fn (block_s mut BlockSection) set_block(x, z, id int) {
	block_s.blocks[z*16+x] = i64(id)
}

pub fn (block_s BlockSection) get_block(x, z int) i64 {
	return block_s.blocks[z*16+x]
}