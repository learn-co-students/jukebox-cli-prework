

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

def list(songs)
  puts songs.join("/n")
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp
  songs.each_with_index do |song, number|
    if song_input == song || song_input.to_i == number+1
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  while input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(songs)
      help
    when "play"
      play(songs)
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end
