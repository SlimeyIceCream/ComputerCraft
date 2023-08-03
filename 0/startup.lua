--The computers password
local password = "0981"
os.pullEvent=os.pullEventRaw

--Loops the computer password request
repeat
--Tells user to enter password & logs it
io.write("Please Enter The Computer Password \n(Press enter twice on failure):")
io.flush()
local enteredpassword = io.read("*line")

--Unlocks computer if the password is correct
if enteredpassword==password then
    print("Unlocked!")
    break
else
    print("YOU ARE AN IDIOT, HA, HA, HAHAHAHAHAHA")
end

io.write("")
io.flush()
local response = io.read("*line")
if response == "123" then
    break
end

term.clear()

until false