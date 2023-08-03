term.clear()
print("Say exit (Case sensitive) instead of a number if you wish to quit \n \n please wait 5 seconds.")
sleep(5)
term.clear()
print("Enter a number from 1 - 10!")
sleep(2)

repeat
term.clear()
    local answer =math.random(1, 10)

    io.write("Enter your answer:")
    io.flush()
    
    local answered = io.read("*line")

if answered == "exit" then
    break
end

answered = tonumber(answered)

if answered==answer then
    print("BEEEEP")
    print("Good Job!")
else
    print("BEEEEEEP")
    print("So close! It was: " .. answer)
end

print("\n \n REGENERATING NUMBERS")
sleep(2)

until false