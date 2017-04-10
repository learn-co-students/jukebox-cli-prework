def help
  puts ("I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program")
end

def list(songs)
  songs.each_with_index do |song, i|
    puts("#{i+1} #{song}")
  end
end

def play_by_number(songs, number)
  if number > songs.size
    puts("Invalid input, please try again")
  else
    puts(songs[number - 1])
  end
end

def play_by_name(songs, name)
  songs.each_with_index do |song, i|
    if song == name
      puts(song)
      return
    end
  end
  puts("Invalid input, please try again")
end

def play(songs)
  song = gets.chomp
  is_int = Integer(song) rescue false
  if is_int
    play_by_number(songs, song.to_i)
  else
    play_by_name(songs, song)
  end
end

def exit_jukebox
  puts("Goodbye")
end

def run(songs)
  help
  while true
    puts("Please enter a command:")
    input = gets.chomp.downcase
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit
      break
    end
  end

end
