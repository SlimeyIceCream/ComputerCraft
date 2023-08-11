local monitor = peripheral.find("monitor")
rednet.open("top")
local height = 0
monitor.setTextScale(0.5)

repeat

local file = io.open("output.txt", "a")

local id = rednet.lookup("Sender", "22")
if id then
    print("Found Sender at computer #" .. id)
else
    printError("Cannot find Sender")
end

local id, message = rednet.receive(nil, 5)
if not id then
    printError("No message received")
elseif message == "exit" then
    file:close()
    break
else
    height = height + 1
    monitor.setCursorPos(1, height)
    monitor.write(("Computer %d: %s"):format(id, message))
    local output = message
file:write(output .. "\n")
end


if height >= 5 then
    monitor.scroll(3)
    height = height - 3
end


sleep(1)
until false

local file = io.open("output.txt", "a")
file:write("\nProgram Stopped\n")
file:close()