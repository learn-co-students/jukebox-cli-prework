#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
# "Wolf" => '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
# "Blue" => '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/home/christafaa/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  puts my_songs.keys
end

def play(my_songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  
  songs = my_songs.keys

  if songs.include?(request)
    path = my_songs[request]
    puts "Playing #{request}"
    system "open #{path}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help

  while true
    puts "Please enter a command:"
    input = gets.chomp

    case input
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end
