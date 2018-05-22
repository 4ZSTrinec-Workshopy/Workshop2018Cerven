local hero_atlas
local hero_sprite

local x = 30
local y = 60
local velocity
local direction

local angle = 0

function love.load(arg)
    love.graphics.setDefaultFilter('nearest', 'nearest')
    hero_atlas = love.graphics.newImage("assets/gfx/hero.png")
    hero_sprite = love.graphics.newQuad(32, 16, 16, 16, hero_atlas:getDimensions())
end

function love.update(dt)
    if dt > 0.035 then return end
    --angle = angle + 27.5 * dt

    --Player Movement
    if love.keyboard.isDown("a") then 
        x = x - 200 * dt
    elseif love.keyboard.isDown("d") then
        x = x + 200 * dt
    end
    if love.keyboard.isDown("s") then
        y = y + 200 * dt
    elseif love.keyboard.isDown("w") then
        y = y - 200 * dt
    end

    --Other controls
    if love.keyboard.isDown("e") then -- Fire a projectile
        
    end

end


function love.draw()
    love.graphics.draw(hero_atlas, hero_sprite,x, y, math.rad(angle), 4, 4, 8, 8)
end