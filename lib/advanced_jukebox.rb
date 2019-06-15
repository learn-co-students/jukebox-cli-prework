#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/aoch1019/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
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
  
  my_songs.keys.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
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
  
  puts "Please enter a song name:"
  user_choice = gets.chomp
  is_valid = "no"
  
  my_songs.each do |song, path|
    if user_choice == song
      system "open #{path}"
      is_valid = "yes"
    end
  end
  
  if is_valid == "no"
    puts "Invalid input, please try again"
    user_choice = gets.chomp
    play(my_songs)
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  
  while user_response != "exit"
    if user_response == "list"
      list(my_songs)
    elsif user_response == "play"
      play(my_songs)
    elsif user_response == "help"
      help
    elsif user_response == "exit"
      exit_jukebox
    else
      "Not a valid command!"
    end
    user_response = gets.chomp
  end
  exit_jukebox
end
