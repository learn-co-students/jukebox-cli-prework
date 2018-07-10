#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
my_songs = {
"Go Go GO" => 'Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/ritz/Flatiron-Prework/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can pla
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  i = 1;
  my_songs.each do |key, value|
    puts "#{i}. #{key}"
    i += 1
  end
end


def play(my_songs)
  song_names = my_songs.keys
  i = 0;
  puts "Please enter a song name or number:"
  input = gets.chomp

  if input.to_i > 0 && input.to_i <= song_names.size
    my_songs.each do |key, value|
      if song_names[input.to_i - 1] == key
        puts "Now playing #{song_names[input.to_i - 1]}"
        system ("open #{value}")
      end
    end
  elsif song_names.include?(input)
    my_songs.each do |key, value|
      if input == key
        puts "Now playing \"#{key}\""
        system ("open #{value}")
      end
    end
  else
    puts "Invalid input, please try again"
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

def run(my_songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input == "help"
    help
  elsif user_input == "list"
    list(my_songs)
  elsif user_input == "play"
    play(my_songs)
  elsif user_input == "exit"
    exit_jukebox
  else puts "try typing that again."
  end
end

run(my_songs)
