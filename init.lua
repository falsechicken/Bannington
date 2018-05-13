--[[
Bannington - Remove/Ban items from Minetest without modifying the original game/mod source.

Copyright (C) 2018 False_Chicken

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

--]]

bannington = {}

local modName = "Bannington"

-- Load banned items table
dofile(minetest.get_modpath("bannington").."/banned_items.lua")

-- Ban items after server load.
minetest.after(0.1, function()
	for k, v in pairs(bannington.bannedItems) do
		minetest.log("Bannington removing item "..v)
		minetest.unregister_item(v)
	end
end)
