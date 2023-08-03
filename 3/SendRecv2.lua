--Big thanks to the computer craftwiki for existing so I good copy and modify the example code(lol). 
--And thank you chatgpt for explaing things and allowing me to learn more about lua.

local startmodem = require("startmodem")
startmodem()

term.clear()
print("Send an empty or 1 letter message before beginning transmission.\n If you dont your first message will be logged incorrectly.")
print("\n \n Send stop to exit.")
sleep(5)

term.clear()

local count = 1

local my_window = window.create(term.current(), 1, 1, 50, 16)
my_window.setBackgroundColour(colours.grey)
my_window.setTextColour(colours.white)



repeat


local function tick()
    local line = 1
    while true do
        local id, message = rednet.receive()
        my_window.setCursorPos(1, line)
        my_window.write((" %d\n sent message: %s"):format(id, message))
        line = line + 1
    end
end
local function wait_for_input()
    repeat
        local _, key = os.pullEvent("key")
    until key == keys.enter
    term.setCursorPos(1, 5)
    io.write("Enter Message:")
    io.flush()
    local send = io.read("*line")
    rednet.broadcast(send)
end
my_window.clear()

parallel.waitForAny(tick, wait_for_input)
until false