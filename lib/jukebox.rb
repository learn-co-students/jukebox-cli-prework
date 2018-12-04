
def help
  puts "I accept the following commands:\n
        - help : displays this help message\n
        - list : displays a list of songs you can play\n
        - play : lets you choose a song to play\n
        - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  
  if songs.include?(song_name)
    puts "Playing #{song_name}"
  elsif song_name.to_i > 0 && song_name.to_i < 10
    puts "Playing #{songs[song_name.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end  

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.chomp
    
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    else
      help
    end
  end  
end  