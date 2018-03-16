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
require "pry"


my_songs = {
"Go Go GO" => '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/caroline/.atom/.learn-ide/home/harenarium/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index{|song, i|
    puts "#{i+1}. #{song}"
  }
end


def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  my_songs.each{|song,path|
    if user_input == song
      puts "Playing #{song}"
      system "open #{path}"
      return
    end
  }
  if user_input.to_i>0 && user_input.to_i <= my_songs.length
    puts "Playing #{my_songs.keys[user_input.to_i-1]}"
    system "open #{path}"
    return
  else
    puts "Invalid input, please try again"
    return
  end
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    case user_input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end
