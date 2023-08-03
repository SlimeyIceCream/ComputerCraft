local startmodem = require("startmodem")
startmodem()

term.clear()
print("Send an empty or 1 letter message before beginning transmission.\n If you dont your first message will be logged incorrectly.")
print("\n \n Send stop to exit.")
--sleep(5)

term.clear()



repeat

    term.clear()

    local my_window = window.create(term.current(), 1, 1, 50, 16)
    my_window.setBackgroundColour(colours.grey)
    my_window.setTextColour(colours.white)
    my_window.clear()




    local id, message = rednet.receive()


    my_window.write(("%d sent message: %s"):format(id, message))
    sleep(1)
    term.setCursorPos(2, 18) 
    io.write("Enter Message:")
    io.flush()
    local send = io.read("*line")
    rednet.broadcast(send)


    sleep(1)


    sleep(1)


until false

local my_window = window.create(term.current(), 1, 1, 50, 16)
my_window.setBackgroundColour(colours.grey)
my_window.setTextColour(colours.white)

repeat
local function tick()
    while true do
        local id, message = rednet.receive()
        my_window.write(("%d sent message: %s \n"):format(id, message))
    end
end
local function wait_for_q()
    repeat
        local _, key = os.pullEvent("key")
    until key == keys.enter
    io.write("Enter Message:")
    io.flush()
    local send = io.read("*line")
    rednet.broadcast(send)
end

parallel.waitForAny(tick, wait_for_q)
until false




