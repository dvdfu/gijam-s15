Player = require 'player'
Controller = require 'controller'

function love.load()
	math.randomseed(os.time())
	love.graphics.setDefaultFilter('nearest', 'nearest')
	love.graphics.setBackgroundColor(40, 60, 80)

	p1 = Player(1)
	c = Controller(1)
end

function love.update(dt)
	p1:update(dt)
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
end

function love.draw()
	p1:draw()
end
