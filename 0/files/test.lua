balls = 2 if balls>0 then print("Balls") end
os.pullEvent=os.pullEventRaw

repeat
io.write("AUTH-LEVEL:HIGH \n Enter the password:")
io.flush()

local password = "test"

local enteredPassword = io.read("*line")
local stop = io.read(1)


if enteredPassword==password then
    print("Hello BOZO!")
    redstone.setOutput("top", true)
    sleep(3)
    redstone.setOutput("top", false)
else
    print("SORRY L")
    redstone.setOutput("top", false)
end

io.write("[SYS ADMIN] \n Enter the secret to end the loop:")
io.flush()
local response = io.read("*line")
if response == "123" then
    break
end

--local speaker = peripheral.find("speaker")
--speaker.playSound("minecraft:block.note_block.chime")

term.clear()
redstone.setOutput("top", false)


until false