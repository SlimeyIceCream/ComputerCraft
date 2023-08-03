-- Define the correct password
local correctPassword = "password123"

-- Prompt the user to enter a password
io.write("Enter the password: ")
io.flush()

-- Read the user input
local enteredPassword = io.read("*line")

-- Check if the entered password matches the correct password
if enteredPassword == correctPassword then
  print("OK")
else
  print("Incorrect password")
end
