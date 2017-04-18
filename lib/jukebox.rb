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

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end

def help
  puts "I accept the following commands:
  - help : display this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index {|song, idx| puts "#{idx+1}. #{song}"}
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song = gets.chomp
  song_found = false

  if songs_array.include?(song)
    song_found = true
    puts "Playing #{song}"
  else
    song = song.to_i
  end

  if song_found == false
    if song.is_a?(Fixnum) && song <= songs_array.size + 1 && song >= 1
      song_found = true
      puts "Playing #{songs_array[song - 1]}"
    end
  end

  if song_found == false
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  loop do
    puts "\nPlease enter a command:\n"
    response = gets.chomp
    case response
      when "exit"
        return exit_jukebox
      when "help"
        help
      when "list"
        list(songs_array)
      when "play"
        play(songs_array)
      else
        puts "Invalid command, please try again."
    end
  end
end
