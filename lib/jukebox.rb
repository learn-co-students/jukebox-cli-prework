songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# Outputs instructions for user on how to use jukebox
def help
    puts "I accept the following commands: \n - help : displays this help message \n - list : displays a list of songs you can play \n - play : lets you choose a song to play \n - exit : exits this program"
end

# Output list of songs that user can play
def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

# Returns true if input string is an integer
def is_int(str)
    true if Integer(str) rescue false
end

# Asks user to input song name or number
# Outputs chosen song name
def play (songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    
    if is_int(input) && input.to_i > 0 && input.to_i <= songs.length
        index = input.to_i - 1
        song_name = songs[index]
        puts "Playing #{song_name}"
    elsif songs.include? (input)
        puts "Playing #{input}"
    else
        puts "Invalid input, please try again"
    end
end

# Program says goodbye and exits
def exit_jukebox
    puts "Goodbye"
end

# Runs the program
def run(songs)
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
                list(songs)
                puts "Please enter a command:"
                command = gets.chomp
            when "play"
                play(songs)
                puts "Please enter a command:"
                command = gets.chomp
            else
                puts "Invalid command, please enter again:"
                command = gets.chomp
        end
    end
    
    exit_jukebox
end







