#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
my_songs = {
  "Go Go GO" => '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/tayloraugustgiles/Development/flatiron-prework/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(array)
  array.keys.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end


def play(array)
  puts "Please enter a song name:"
  song_choice = gets.chomp
  array.each do |title, file_path|
    if title == song_choice
      system "open #{file_path}"
      puts "Playing #{title}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help

  puts "Please enter a command:"
  user_response = gets.chomp

  until user_response == "exit"
    if user_response == "list"
      list(array)
    elsif user_response == "play"
      play(array)
    elsif user_response == "help"
      help
    end
    puts "Please enter a command:"
    user_response = gets.chomp
  end
  exit_jukebox
end
