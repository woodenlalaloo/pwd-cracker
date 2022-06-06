numAttempts = 0
function record()
    print("Password to crack: ")
    pwd = io.read()
    print("Would you like to see the crack attempts(will slow down) y/n: ")
    choice = io.read()
    if choice == "y" then
        startTime = os.clock()
        printAttempts()
    else
        noPrintAttempts()
        startTime = os.clock()
    end
end
function printAttempts()
    cracked = false
    while cracked == false do
        upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        lowerCase = "abcdefghijklmnopqrstuvwxyz"
        numbers = "0123456789"

        characterSet = upperCase .. lowerCase .. numbers 

        keyLength = string.len( pwd )
        output = ""

        for	i = 1, keyLength do
            rand = math.random(#characterSet)
            output = output .. string.sub(characterSet, rand, rand)
        end

        print(output)

        if output == pwd then
            endTime = os.clock()
            print("Password cracked: ")
            print(pwd)
            print("Attempts: ")
            print(numAttempts)
            print("Time(): ")
            print(endTime-startTime)
            cracked = true
            io.read()
            record()
        else
            numAttempts = numAttempts + 1
        end

    end
end
function noPrintAttempts()
    cracked = false
    while cracked == false do
        upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        lowerCase = "abcdefghijklmnopqrstuvwxyz"
        numbers = "0123456789"

        characterSet = upperCase .. lowerCase .. numbers 

        keyLength = string.len( pwd )
        output = ""

        for	i = 1, keyLength do
            rand = math.random(#characterSet)
            output = output .. string.sub(characterSet, rand, rand)
        end

        if output == pwd then
            endTime = os.clock()
            print("Password cracked: ")
            print(pwd)
            print("Attempts: ")
            print(numAttempts)
            print("Time: ")
            print(endTime-startTime)
            cracked = true
            io.read()
            record()
        else
            numAttempts = numAttempts + 1
        end

    end
end
record()