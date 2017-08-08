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
    puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
    puts " - play : lets you choose a song to play"
    puts " - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp
  songs.each.with_index(1) do |song, index|
    if (song_input == song) || (index == song_input.to_i)
      puts "Playing #{song}."
    else
      puts "Invalid input, please try again"
      break
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input != "exit"
  puts "Please enter a command:"
  input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "help"
      help
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox
    else
      puts "Please type help for a list of valid commands!"
    end
  end
end
