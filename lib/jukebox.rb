class String
  # returns true if the String is a number, with only 0-9 in it
  # returns false otherwise
  def numeric?
    !!self.match(/\A[0-9]+\Z/)
  end
end

def help
  puts "I accept the following commands:
	- help : displays this help message
	- list : displays a list of songs you can play
	- play : lets you choose a song to play
	- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  name_or_number = gets.chomp
  if (name_or_number.numeric?)
    # this is a song number
    puts "Playing #{songs[name_or_number.to_i - 1]}"
    return
  else
    # this must be a song name
    songs.each { |song_name|
      if (song_name == name_or_number)
        puts "Playing #{song_name}"
        return
      end
     }
  end

  puts "Invalid input, please try again"
end

def list(songs)
  songs.each_index { |song_index|
    puts "#{song_index+1}: #{songs[song_index]}"
  }
end

def exit_jukebox
  puts "Goodbye"
  exit
end

def run(songs)
  # prompt user
  puts "What is your command?"

  # get command
  user_cmd = gets.chomp

  # execute command
  if (user_cmd == "help")
	help
  elsif (user_cmd == "list")
    # print list of songs
    list(songs)
  elsif (user_cmd == "play")
    # play a song
    play(songs)
  elsif (user_cmd == "exit")
    # exit program
	exit_jukebox
  else
    puts "That's not a valid command"
  end

  # prompt user for next command
  run(songs)
end
