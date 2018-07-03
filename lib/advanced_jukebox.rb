def help
  puts 'I accept the following commands:',
       '- help : displays this help message',
       '- list : displays a list of songs you can play',
       '- play : lets you choose a song to play',
       '- exit : exits this program'
end



def list(my_songs)
  my_songs.keys.each do |song|
    puts song
  end
end


def play(my_songs)
  puts 'Please enter a song name:'

  selection = gets.chomp

  if my_songs.keys.include?(selection)
    system "open \"#{my_songs[selection]}\""
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(my_songs)
  intro = 'Please enter a command:'

  help
  puts intro
  while (response = gets.chomp)
    case response
    when 'list'
      list(my_songs)
      puts intro
    when 'play'
      play(my_songs)
      puts intro
    when 'help'
      help
      puts intro
    when 'exit'
      exit_jukebox
      break
    end
  end
end
