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

def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs_array.include?(input)
    puts "Playing #{input}"
  elsif input.to_i <= songs_array.length && input.to_i > 0
    i = input.to_i - 1
    puts "Playing #{songs_array[i]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs_array)
  songs_array.each do |song|
    puts song
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  input = gets.chomp
  case input
    when "help"
      run(songs_array)
    when "play"
      play(songs_array)
      run(songs_array)
    when "list"
      list(songs_array)
      run(songs_array)
    when "exit"
      exit_jukebox
    else
      run(songs_array)
  end
end
