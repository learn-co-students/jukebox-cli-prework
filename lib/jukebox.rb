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

def list(songs_array)
  songs_array.each_with_index{|song, index| puts (index + 1).to_s + "." + song}
end

def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs_array.include?(input)
  puts "Playing #{input}"
elsif input.to_i > 0 && songs_array.include?(songs_array[input.to_i - 1])
  puts "Playing #{songs_array[input.to_i - 1]}"
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
  user_input = gets.chomp
  case user_input
  when "exit"
    exit_jukebox
    return
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  else
    return run(songs)
  end
  return run(songs)
end
