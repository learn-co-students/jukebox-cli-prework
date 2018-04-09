#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
Pry.config.input = STDIN
Pry.config.output = STDOUT

 my_songs = {
 "Go Go GO" => '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/travis/Development/labs/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  my_songs.each do |song, index|
    #binding.pry
    if selection == song
      puts "Playing #{song}"
      system "open #{index}"
      return nil
    end
  end
  puts "Invalid input, please try again"

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "help"
      help
      response = gets.chomp
    elsif response == "list"
      list(my_songs)
      response = gets.chomp
    elsif response == "play"
      play(my_songs)
      response = gets.chomp
    else
      puts "Invalid Entry"
      response = gets.chomp
    end
  end
  exit_jukebox
end

run(my_songs)
