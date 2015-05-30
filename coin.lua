Class = require 'lib.class'
Vector = require 'lib.vector'

Coin = Class {
	RADIUS = 5
	objType = 'coin',
	init = function(self, pos)
		self.pos = pos
	end
}

function Coin:update(dt)

end

function Coin:draw()
	local r, g, b, a = love.graphics.getColor()
	-- Set draw to Yellow
	love.graphics.setColor(255, 255, 0, 255)
	love.graphics.circle('line', self.pos.x, self.pos.y, Coin.RADIUS, 10)
	love.graphics.setColor(r, g, b, a)
end

return Coin
