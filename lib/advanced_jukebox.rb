#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => 'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
# "LiberTeens" => 'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
# "Guiding Light" => 'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
# "Wolf" => 'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
# "Blue" => 'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => 'Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
# }

def help

  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end



def list(my_songs)
  my_songs.collect {|song| puts song.to_s}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  response = gets.chomp

  if response == "Go Go GO"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/01.mp3>}"
  elsif response == "LiberTeens"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/02.mp3>}"
  elsif response =="Hamburg"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/03.mp3>}"
  elsif response == "Guiding Light"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/04.mp3>}"
  elsif response == "Wolf"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/05.mp3>}"
  elsif response == "Blue"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/06.mp3>}"
  elsif response == "Graduation Failed"
    system "open #{</Users/tquirk/Development/code/jukebox-cli-prework/audio/Emerald-Park/07.mp3>}"
  else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  answer = gets.chomp

  case answer
    when "help"
      help()
    when "list"
      list()
    when "play"
      play()
    when "exit"
      exit_jukebox()
    else
      puts "Invalid input, please try again."
      run(songs)
    end
end
