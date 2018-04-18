#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer



def help
  #this method should be the same as in jukebox.rb
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each do |song_name, directory|
    puts song_name
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
  puts "Please input a song name:"
  chosen_song = gets.chomp
  if my_songs[chosen_song]
    system 'open ' + my_songs[chosen_song]
  else
    puts "That choice was invalid. Please enter another command:"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye."
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  exit_jukebox
end
