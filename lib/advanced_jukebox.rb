#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
  songs = my_songs.keys
  songs.each_with_index { |song, i|
    puts "#{i+1}. #{song}"
  }
end


def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if my_songs[input]
    puts "Playing #{input}"
    system "open #{my_songs[input]}"
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
    puts "Please enter a command:"
    command = gets.chomp
    if command == 'help'
      help
    elsif command == 'list'
      list(my_songs)
    elsif command == 'play'
      play(my_songs)
    elsif command == 'exit'
      exit_jukebox
      break
    end
  end
end
