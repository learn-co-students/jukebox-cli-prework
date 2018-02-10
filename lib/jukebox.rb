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
  - exit : exits this program"
end


def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{songs[index]}" }

end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
    if songs.include?(song)
      puts "Playing #{song}"
    elsif (1..songs.length).include?(song.to_i)
      puts "Playing #{songs[song.to_i - 1]}"
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
  answer = gets.chomp
  while true
    if answer == "help"
      help
      puts "Please enter a command:"
      answer = gets.chomp
    elsif answer == "list"
      list(songs)
      puts "Please enter a command:"
      answer = gets.chomp
    elsif answer == "play"
      play(songs)
      puts "Please enter a command:"
      answer = gets.chomp
    elsif answer == "exit"
      exit_jukebox
      break
    end
  end
end
