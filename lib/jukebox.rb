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
#   "Hi #{name}"
# end
#
# puts "Enter your name:"
# user_name = gets.chomp
#
# puts say_hello(user_name)


def help
  puts "help - get a list of commands"
  puts "list - get a list of all the songs"
  puts "play - play a song"
  puts "exit - exit the jukebox"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end


# def play(songs)
#   puts "Please enter a song name or number:"
#   song = gets.chomp
#   if songs.include?(song)
#     puts "Playing #{song}"
#   elsif songs.each_with_index do |song, index|
#     song.to_i == index
#     puts "Playing #{song}"
#   else
#     puts "Invalid input, please try again"


def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  songs.each_with_index do |song, index|
    if song_choice.to_i == index
      puts "Playing #{songs[index-1]}"
    elsif
      song_choice == song
      puts "Playing #{song[index]}"
    else
      puts "Invalid input, please try again"

    end

  end
end


def exit_jukebox
  puts "Goodbye"
end
