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

def list(songs)
  songs.each_with_index { |song, i|
    puts "#{i+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i.between?(1, songs.length)
    curr_song = songs[user_input.to_i-1]
    puts "Playing #{curr_song}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
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
  user_command = gets.chomp
  until user_command == "exit"
    if user_command == "list"
      list(songs)
    elsif user_command == "play"
      play(songs)
    elsif user_command == "help"
      help
    end
    user_command = gets.chomp
  end
  return exit_jukebox
end
