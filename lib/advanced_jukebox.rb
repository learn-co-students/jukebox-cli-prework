#CHECK PATH!!
require 'pry'
my_songs = {
"Go Go GO" => '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/yoan/Development/code/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts <<-HEREDOC
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
  HEREDOC
end



def list(my_songs)
  puts my_songs.keys
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  puts "Please enter a song name: "
  response = gets.chomp
  if my_songs.keys.include?(response)
    puts "Playing #{response} "
    system "open #{my_songs[response]}"
  else
    puts "That song doesn't exist"
  end
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end


def run(my_songs)
  help
  response = nil
  puts "Please enter a command:"
  while response != "exit"
    response = gets.chomp
    if response ==  "list"
      list my_songs
    elsif response == "play"
      play my_songs
    elsif response =="help"
      help
    else
      puts "invalid entry"
    end
  end
  exit_jukebox
end
