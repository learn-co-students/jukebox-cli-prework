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
        - exit : exits this program
        "
      end

def list(songs)
  songs.each do |name|
    puts "#{songs.index(name)+1}. #{name}"
  end
end

def play(songs)
  puts "Please enter a song name or number"
  song_input = gets.chomp
  song_detail = song_input.to_i
  if (1..9).include?(song_detail)
    puts "Playing #{songs[song_detail-1]}"
  elsif songs.include?(song_input)
    puts "Playing #{song_input}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.chomp
  loop do
  if command == "help"
    help
    puts "Please enter a command:"
    command = gets.chomp
  elsif command == "list"
    list(songs)
    puts "Please enter a command:"
    command = gets.chomp
  elsif command == "play"
    play(songs)
    puts "Please enter a command:"
    command = gets.chomp
  elsif command == "exit"
    break
  end
  end
  exit_jukebox
end
