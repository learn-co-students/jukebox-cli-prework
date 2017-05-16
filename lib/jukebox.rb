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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}: #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

  #test if valid

  unless songs.include?(user_input) || (1..songs.length).include?(user_input.to_i)
    puts "Invalid input, please try again"
    user_input = gets.chomp
  end

  #test if it's an integer, if it is, get corresponding song name to integer


  if user_input.to_i == 0
    song_name = user_input
  else
    song_name = songs[user_input.to_i-1]
  end

    puts "playing #{song_name})"


end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_command = gets.chomp

  until user_command == "exit"

    if user_command == "list"
      list(songs)
    elsif user_command == "help"
      help
    elsif user_command == "play"
      play(songs)
    end

    puts "Please enter a command:"
    user_command = gets.chomp

  end

  exit_jukebox

end
