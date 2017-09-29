-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- remove status bar
display.setStatusBar(display.HiddenStatusBar)

--physics engine
local physics = require("physics")
physics.start()

--load background
local background = display.newImageRect("image/underwater1.jpeg",1080,620)

local options =
{
    --loops = 0
    duration=15000
}
--music
local bgMusic = audio.loadSound("sound/music.mp3")
audio.play(bgMusic,options)


--build floor
local ground = display.newRect(5,310,1080,4)
physics.addBody(ground,"static")

--smoke effect
local smoke = display.newImage("image/smoke.png",265,340,1)
local blackSmoke = display.newImage("image/black-smoke.png",265,340,0)
-- Dissolve the two images
transition.dissolve( blackSmoke, smoke, 5000, 1200 )

--variables
--sam the shrimp
local sam = display.newImage("image/sam.png",5,160)
sam.width = 50
sam.height = 80
physics.addBody(sam,"dynamic")
transition.moveTo( sam, { x=400, rotation=5,iterations=1,time=5000 } )

--solo the starfish
local solo = display.newImage("image/star-fish.png",235,95)
solo.width = 25
solo.height = 25
physics.addBody(solo,"dynamic",{bounce=1.0})
--transition.moveTo( solo, { x=-50,y=-24, rotation=5,iterations=1,time=5000 } )
local solo2 = display.newImage("image/star-fish.png",195,55)
solo2.width = 20
solo2.height = 20
physics.addBody(solo2,"dynamic",{bounce=1.0,density=0.2})

--oga the octopus
local oga = display.newImage("image/octor.png",460,180)
oga.width = 290
oga.height = 210
physics.addBody(oga,"dynamic")
transition.moveTo( oga, { y=90, rotation=5,iterations=1,time=5000 } )