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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif (song_choice.to_i > 0) && (song_choice.to_i <= songs.length)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.strip
  while command != "exit"
    case command
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    end
    puts "Please enter a command:"
    command = gets.strip
  end
  exit_jukebox
end
