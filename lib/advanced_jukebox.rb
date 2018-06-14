require "pry-byebug"

# my_songs = {
# "Go Go GO" => '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
# "Wolf" => '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
# "Blue" => '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/home/learn/Development/Code/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  index=1
  my_songs.each do |song, path|
     puts "#{index}. #{song}"
     index+=1
  end
end

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name"
    response = gets.chomp
  
    if my_songs.include?(response)
      puts "Playing #{response}"
      # binding.pry
      command = "xdg-open #{my_songs[response]}"
      system(command)    
    else
      puts "Invalid input, please try again."
    end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  response = ""
  help

  until response.downcase == "exit"
  puts "Please enter a command:"
  response = gets.chomp

  case response.downcase
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Command is invalid."
      next
    end
  end
end
