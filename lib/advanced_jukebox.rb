#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits the program"
end



def list(my_songs)
  my_songs.each do |song, path|
    puts "#{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  response = gets.chomp
  c = 0
  my_songs.collect do |song, path|
    if response == song
      puts "Playing #{song}"
      system "open #{path}"
      c += 1
    end
  end
  if c == 0
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
    puts "Please enter a command:"
    user_command = gets.chomp
    case
    when user_command == "list"
      list(my_songs)
    when user_command == "help"
      help
    when user_command == "play"
      play(my_songs)
    when user_command == "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again"
    end
  end
end
