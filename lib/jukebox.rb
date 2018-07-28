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
  songs.each.with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song=gets.chomp
  if songs.include?(song)
    puts "Playing #{song}."
  elsif song.to_i <= songs.length && song.to_i > 0
    song = songs[song.to_i-1]
    puts "Playing #{song}."
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit" do
    case response
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    else
      puts "Invalid input. Please try again."
    end
  end
  exit_jukebox
end
