 my_songs = {
 "Go Go GO" => '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/slin12-121576/code/labs/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

 def help
   puts "I accept the following commands:"
   puts "- help : displays this help message"
   puts "- list : displays a list of songs you can play"
   puts "- play : lets you choose a song to play"
   puts "- exit : exits this program"
 end


def list(my_songs)
  my_songs.keys.each {|song| puts song}
end

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter song name:"
  input = gets.chomp
  if my_songs.keys.include?(input)
    system 'open #{my_songs[input]}'
  else
    puts "Invalid song title"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  loop do
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
    input = gets.chomp
  end
  exit_jukebox
end
