#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'

my_songs = {
 "Go Go GO" => 'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
 "Wolf" => 'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
 "Blue" => 'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'Users/andrewrivera/development/ruby/first_applications/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(my_songs)
  my_songs.each do |name, path|
    puts name
  end
end
#this method is different! Collect the keys of the my_songs hash and
#list the songs by name

def play(my_songs)
  selection = gets.chomp
  if my_songs.has_key?(selection)
    my_songs.each do |name, path|
      if name == selection
        system "open #{path}"
      end
    end
  else
    puts "Sorry, we don't have that song"
  end
end

  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  loop do
    command = gets.chomp
      if command == "help"
        help
      elsif command == "list"
        list(my_songs)
      elsif command == "play"
        puts "Please enter a song name:"
        play(my_songs)
      elsif command == "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end
