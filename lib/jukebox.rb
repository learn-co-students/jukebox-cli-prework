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
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help

  line_1 = "I accept the following commands:"
  line_2 = "- help : displays this help message"
  line_3 = "- list : displays a list of songs you can play"
  line_4 = "- play : lets you choose a song to play"
  line_5 = "- exit : exits this program"

  puts line_1
  puts line_2
  puts line_3
  puts line_4
  puts line_5

end


def list(songs)
  new_songs_arr = []
  songs.each.with_index(1) do |song, index|
    new_songs_arr << "#{index}. #{song}"
  end
puts new_songs_arr
end


def play(songs)
  puts "Please enter a song name or number:"
  users_response = gets.chomp
  if songs.include?(users_response)
    songs.each do |song|
      # binding.pry
      if users_response == song
        puts "Playing " + "#{users_response}"
      end
      end
  elsif users_response.to_i >= 1 && users_response.to_i <= 9
    selected_song = songs[users_response.to_i - 1]
    puts "Playing " + "#{selected_song}"
  else
    puts "Invalid input, please try again"
    users_response = gets.chomp
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  loop do
    puts "Please enter a command:"
    users_response = gets.chomp
      if users_response == "list"
        list
      elsif users_response == "play"
        play
      elsif users_response == "help"
        help
      else users_response == "exit"
        exit_jukebox
        break
      end
    end
end
