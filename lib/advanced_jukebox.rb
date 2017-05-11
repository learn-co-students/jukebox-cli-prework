#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '~private~/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '~private~/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '~private~/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '~private~/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
# "Wolf" => '~private~/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
# "Blue" => '~private~/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '~private~/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.keys.each {|song| puts "#{song}"}
end

def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  my_songs.keys.include?(input) ? system "open #{my_songs[input]}" : puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  puts "Hi! I'm a Jukebox"
  help
  choice = ""

  until choice == "exit"
    puts "Please enter a command:"
    choice = gets.chomp.downcase

    case choice
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
end
