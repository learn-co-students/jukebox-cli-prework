#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer





def help
  puts "I accept the following commands"
  puts
  help = '- help : displays this help message'
  list = '- list : displays a list of songs you can play'
  play = '- play: lets you choose a song to play'
  exit = '- exit: exits this program'
  puts help
  puts list
  puts play
  puts exit
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each do |key, value|
    puts key
  end
end


def play(my_songs)
  puts
  puts "Please enter a song name or number:"
  input = gets.chomp
  if !my_songs.keys.include?(input)
    puts "Invalid input, please try again"
  else
    puts "Now playing #{input}"
    system 'open ' << my_songs[input]
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
  input = ''
  while input
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'list'
      list(my_songs)
    when 'play'
      list(my_songs)
      play(my_songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end

