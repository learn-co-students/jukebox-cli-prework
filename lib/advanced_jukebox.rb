#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/jaredjohnson/Development/labs/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  song_keys = []
  my_songs.each do |key, file_path|
    song_keys << key
  end
  puts song_keys
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  input = gets.chomp
  if my_songs.include?(input)
    puts "Playing #{input}"
    system "open #{my_songs[input]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  input = nil
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
      help
    elsif input == "play"
      play(my_songs)
    elsif input == "list"
      list(my_songs)
    elsif input == "exit"
      break
    end
  end
  exit_jukebox
end
