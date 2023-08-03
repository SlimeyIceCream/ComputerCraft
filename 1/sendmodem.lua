local startmodem = require("startmodem")
startmodem()


rednet.host("Sender", "22")

term.clear()
print("Send an empty or 1 letter message before beginning transmission.\n If you dont your first message will be logged incorrectly.")
sleep(4)
term.clear()
print("Send EXIT to close the receiver.\n Send STOP to exit the sender")
sleep(3)
term.clear()

repeat
io.write("What would you like to broadcast:")
io.flush()

local message = io.read("*line")

rednet.broadcast(message)

sleep(1)

if message=="stop" then
    break
end

until false
--rednet.open("left")
--rednet.send(1, "Hello from rednet!")