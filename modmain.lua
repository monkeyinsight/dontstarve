GetPlayer = GLOBAL.GetPlayer
GetSeasonManager = GLOBAL.GetSeasonManager
TheInput = GLOBAL.TheInput
GLOBAL.require('debugkeys')

KeyHandler = Class(function(self)
	self.handler = TheInput:AddKeyHandler(function(key, down) self:OnRawKey(key, down) end )
end)

function KeyHandler:OnRawKey(key, down)
	if (key == GLOBAL.KEY_F5 and not down) then
		GetSeasonManager():StartWinter()
	end
end

CJBMonkeyinsightKeyHandler = KeyHandler()