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

def enter_command
  puts "Please enter a command:"
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  songs_index = 0
  puts "Please enter a song name or number:"
  song_input = gets.chomp
  if songs.index(song_input) != nil || song_input.to_i <= songs.size && song_input.to_i != 0
    if song_input.to_i != 0
      songs_index = (song_input.to_i - 1)
    else
      songs_index = songs.index(song_input)
    end
    puts "#{songs[songs_index]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  help
  until input == "exit"
    enter_command
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end
  exit_jukebox
end
