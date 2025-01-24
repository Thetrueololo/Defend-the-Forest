state = 0
skip = 0
if global.stinkpurchased = 1
{
	sprite_index = sRGBNot
	state = 2
}
if global.stinkskin = 1
{
	sprite_index = sRGBEq
	state = 1
}