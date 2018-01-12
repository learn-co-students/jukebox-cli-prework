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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  user_index = user_input.to_i - 1

  if songs.include?(user_input)
    puts "Playing #{user_input}"

  elsif songs.include?(songs[user_index])
    if user_index >= 0
      puts "Playing #{songs[user_index]}"
    else
      puts "Invalid input, please try again"
    end

  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

# list(songs)
# help
# play(songs)

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

    if user_input == "help"
      help
    elsif user_input == "exit"
      exit_jukebox
    elsif user_input == "play"
      play(songs)
    elsif user_input == "list"
      list(songs)
    else
      puts "unknown command"
    end


end

# run(songs)
