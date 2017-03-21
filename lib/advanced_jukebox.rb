#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

#my_songs = {
#  "Go Go GO" => '/home/jsears4585-50731/code/labs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
#  "LiberTeens" => '/home/jsears4585-50731/code/labs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
#  "Hamburg" =>  '/home/jsears4585-50731/code/labs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
#  "Guiding Light" => '/home/jsears4585-50731/code/labs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
#  "Wolf" => '/home/jsears4585-50731/code/labs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
#  "Blue" => '/home/jsears4585-50731/code/labs/jukebox-cli-prework/Emerald-Park/06.mp3',
#  "Graduation Failed" => '/home/jsears4585-50731/code/labs/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
#}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  my_songs.each {|song, path| puts "#{song}"}
end

def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  my_songs.each do |song, path|
    if input == song
      open path
      return
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
  input = gets.chomp
  case input
  when "list"
    list(my_songs)
  when "play"
    play(my_songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    "#run ERR"
  end
end
