songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def play(song_array)

  puts "Please enter a song name or number:"
  user_input = gets.chomp

  song_array.each_with_index do |song, index|
    if (index + 1).to_s == user_input
      puts "Playing #{song_array[index]}"
    elsif user_input == song
      puts "Playing #{song}"
    end
  end
  puts "Invalid input, please try again."
end

def list(song_array)
  counter = 0
  while counter < song_array.length
    puts "#{counter + 1}. #{song_array[counter]}"
    counter += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)

  help
  puts "Please enter a command:"
  user_input = gets.chomp

  while user_input != "exit"
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "list"
      list
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "play"
      play
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "Please enter a command:"
    end
  end

  if user_input == "exit"
    return exit_jukebox
  end

end
