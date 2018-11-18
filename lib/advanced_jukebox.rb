#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/chanks5/Development/code/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  puts my_songs.keys
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

  puts "Please choose a song:"
  response = nil
  song_names_array = my_songs.keys
  response = gets.chomp.to_s
  song_path = my_songs[response]
  if song_path
    puts "Now Playing #{response}"
    system "open #{song_path}"
  elsif !song_path
    puts "Your input is invalid"
  else
    exit_jukebox
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp

  until (response == 'exit')
    if response == 'help'
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == 'list'
      list(my_songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == 'play'
      play(my_songs)
      puts "Please enter a command:"
      response = gets.chomp
    else
      puts "Your input is invalid."
      break
    end
  end
  exit_jukebox
end
