# something is wrong. Either do not have the correct syntax for calling a file or my file paths are incorrect

my_songs = {
   "Go Go GO" => '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
   "LiberTeens" => '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
   "Hamburg" =>  '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
   "Guiding Light" => '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
   "Wolf" => '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
   "Blue" => '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
   "Graduation Failed" => '/Users/Ryan/.atom/.learn-ide/home/ryanamahaffey-60602/code/labs/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
  - help : display this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index {|song, idx| puts "#{idx+1}. #{song}"}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Enter a song name"
  song = gets.chomp
  if my_songs.keys.include?(song)
    puts "Playing #{song}"
    system open my_songs[song]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
    puts "\nPlease enter a command:\n"
    response = gets.chomp
    case response
      when "exit"
        return exit_jukebox
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      else
        puts "Invalid command, please try again."
    end
  end
end
