def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs_hash)
  songs = songs_hash.keys
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def play(songs_hash)
  puts "Please enter a song name:"
  input = gets.chomp
  songs = songs_hash.keys
  if songs.include?(input)
    system "open #{songs_hash[input]}"
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
  input = gets.chomp
  case input
    when "exit"
      exit_jukebox
    when "help"
      help
      run(songs)
    when "list"
      list(songs)
      run(songs)
    when "play"
      play(songs)
      run(songs)
    else
      puts "Please enter a valid input"
      run(songs)
    end
end
