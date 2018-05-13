# - Bannington -
#### Ban items in Minetest.

How to use:

Add the items/nodes you wish to ban into the array contained in banned_items.lua. By default both chests and locked chests are banned for example.

Example
```lua
bannington.bannedItems = {
	"default:chest_locked",
	"default:chest"
}
```

Licensed under the GPL v2
