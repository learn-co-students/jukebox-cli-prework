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
    help = <<-TEXT
    I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  TEXT

  puts help
end

def play(songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if song_to_play.to_i <= songs.length && song_to_play.to_i != 0
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end

end

def list(songs)
  songs.each_with_index do |song, i |
    puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""

  while input
    puts "Please enter a command:"
    input = gets.downcase.chomp

    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'exit'
      exit_jukebox
      break
    when 'help'
      help
    end
  end
end
