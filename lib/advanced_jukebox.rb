#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => 'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => 'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => 'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'Users/barbaradecares/Development/Flatiron/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.each do |key, value|
    puts key
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  my_songs.each do |song, address|
    if user_input == song
      puts "Playing #{song}"
      open address
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
    abort("Goodbye")
  end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  case user_input
  when "help"
    help
  when "list"
    list
  when "play"
    play
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
  end
end
