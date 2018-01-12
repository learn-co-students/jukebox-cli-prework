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

#def say_hello(name)
#  "Hi #{name}!"
#end
#
#puts "Enter your name:"
#users_name = gets.chomp
#
#puts say_hello(users_name)

def help
  puts "I accept the following commands"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_number = (1..songs.length).to_a
  selection = gets.chomp

  if song_number.include?(selection.to_i)
    puts "Playing #{songs[selection.to_i - 1]}"
  elsif songs.include?(selection)
    puts "Playing #{selection}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = nil
  while user_input != 'exit'
    puts "Please enter a command:"
    user_input = gets.chomp
      help if user_input == 'help'
      list(songs) if user_input == 'list'
      play(songs) if user_input == 'play'
      exit_jukebox if user_input == 'exit'
  end
end
