require 'pry'

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
# user_name = gets.chomp
# puts say_hello(user_name)


def help
  #The help command should output instructions for the user on how to use the jukebox.
  puts "I accept the following commands:\n - help : displays this help message\n - list : displays a list of songs you can play\n - play : lets you choose a song to play\n - exit : exits this program"
end

def play(songs)
  #The play command should ask a user to input a song name or number. It should then output 'Playing Phoenix - 1901' or whatever the song name is.
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  list_of_songs = list(songs)
  #check if valid number first
  if user_song.class == Fixnum
    user_song = list_of_songs[user_song-1]
  end

  if list_of_songs.include?(user_song) && !list_of_songs.include?(user_song).nil?
    puts "Playing #{user_song}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  #The list command should output a list of songs that the user can play.
  # count = 0
  # songs.map do |song|
  #   count += 1
  #   puts "#{count}. #{song}"
  # end

  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
    "#{index+1}. #{song}"
  end
end

def exit_jukebox
  #If the user types in exit, the jukebox should say goodbye and the program should shut down.
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input_command = gets.chomp
    case input_command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end

end
