

#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/robertsmacbook/Development/Flatiron/code/mod1-prework/labs/ruby/first-app/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "  - help : displays this help message"
  puts "  - list : displays a list of songs you can play"
  puts "  - play : lets you choose a song to play"
  puts "  - exit : exits this program"
end

def list(my_songs)
  # Collect the keys of the my_songs hash and list the songs by name
  counter = 0
  my_songs.each do | song, path |
    counter += 1
    puts "#{counter}. #{song.to_s}"
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
  if my_songs[user_input]
    system "open #{my_songs[user_input]}"
  else
    "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    case user_input
      when "play"
        play(my_songs)
      when "list"
        list(my_songs)
      else "help"
        help
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end

run(my_songs)
