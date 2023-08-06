
require 'colortheme'


puts "Welcom Guess A Number Between 1 , 10!!"
@users = 0
@mes = 0

def getinput
    @x = 0
    while @x < 5
        puts ">> Guess!!"
        g_number = gets.chomp.to_i
        if (g_number === 0)then
            p "Its Not A Number Try Again!"
            break
        else
            rand_num = rand 1..10
            if (g_number === rand_num)then
                puts "Like!!".light_green
                @users+=1
            else
                puts "It Was #{rand_num}"
                @mes+=1
                @x +=1
            end
            puts "Score!!!"
            puts %Q"PC: '#{@mes}' You: '#{@users}'"
        end
    end
end


getinput
