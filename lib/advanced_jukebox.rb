#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer



 def help
 puts "I accept the following commands:
 - help : displays this help message
 - list : displays a list of songs you can play
 - play : lets you choose a song to play
 - exit : exits this program"
 end



def list(my_songs)
songs_array = my_songs.keys
songs_array.each_with_index{|song, index|
puts (index + 1).to_s + "." + song
}
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
  if my_songs.has_key?(input)
  puts "Playing #{input}"
  open my_songs[input]
  else
  puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  case user_input
  when "exit"
    exit_jukebox
    return
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  else
    return run(songs)
  end
  return run(songs)
end
