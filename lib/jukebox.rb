def help
  puts 'I accept the following commands:',
       '- help : displays this help message',
       '- list : displays a list of songs you can play',
       '- play : lets you choose a song to play',
       '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts 'Please enter a song name or number:'

  selection = gets.chomp

  if selection.to_i.to_s == selection

    if selection.to_i.between?(1, songs.size)
      puts "Playing #{songs[selection.to_i - 1]}"
    else
      puts 'Invalid input, please try again'
    end

  elsif songs.include?(selection)
    puts "Playing #{songs[songs.index(selection)]}"
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  intro = 'Please enter a command:'

  help
  puts intro
  while (response = gets.chomp)
    case response
    when 'list'
      list(songs)
      puts intro
    when 'play'
      play(songs)
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
