#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => 'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => 'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => 'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'Users/Huang/Documents/LearnDevelopment/Code/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
    #this method should be the same as in jukebox.rb
    
    puts "I accept the following commands: \n - help : displays this help message \n - list : displays a list of songs you can play \n - play : lets you choose a song to play \n - exit : exits this program"
end

def list(my_songs)
    #this method is different! Collect the keys of the my_songs hash and
    #list the songs by name
    
    songs = my_songs.keys
    
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def play(my_songs)
    #this method is slightly different!
    #you should still ask the user for input and collect their song choice
    #this time, only allow user's to input a song name
    #check to see if the name they give is in fact a key of the my_songs hash
    #if it isn't, tell them their choice is invalid
    #if it is, play the song using the system 'open <file path>' syntax
    #get the file path of the song by looking it up in the my_songs hash
    
    songs = my_songs.keys
    puts "Please enter a song name or number:"
    input = gets.chomp

    if songs.include? (input)
        puts "Playing #{input}"
        filename = my_songs[input]
        system "open #{filename}"
    else
        puts "Invalid input, please try again"
    end
  
end

def exit_jukebox
    #this method is the same as in jukebox.rb
    
    puts "Goodbye"
end

def run(my_songs)
    #this method is the same as in jukebox.rb
    
    help
    puts "Please enter a command:"
    command = gets.chomp
  
    while command != "exit"
        case command
            
            when "help"
                help
                puts "Please enter a command:"
                command = gets.chomp
            when "list"
                list(my_songs)
                puts "Please enter a command:"
                command = gets.chomp
            when "play"
                play(my_songs)
                puts "Please enter a command:"
                command = gets.chomp
            else
                puts "Invalid command, please enter again:"
                command = gets.chomp
        end
    end
  
    exit_jukebox
end

