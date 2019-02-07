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
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

 def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

   if songs.include?(response)
    puts "Playing #{response}"
  elsif response.to_i.between?(1, 9)
    puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

 def list(songs)
  songs.each_with_index { |song, index| 
    puts "#{index + 1}. #{song}"
  }
end

 def exit_jukebox
  puts "Goodbye"
end

 def run(songs)
  help

   puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    command = gets.chomp
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
  end
  exit_jukebox
end 
