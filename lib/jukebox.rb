require"pry"
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
#  def say_hello(name)
#  "Hi #{name}!"
#end
#puts "Enter your name:"
#users_name = gets.chomp
#puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can displays
  - play : lets you choose a song to displays
  - exit : exits this program"
end

def list(songs)
  count = 0
  songs.each do |song|
    count += 1
    puts "#{count}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  count = 0
  output = "Invalid input, please try again"
  songs.each do |song|
    count += 1
    if user_input == count.to_s || user_input == song
      output = "Playing #{song}"
    end
  end
  puts "#{output}"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"

  user_input = gets.downcase.chomp

  if user_input == "help"
    run(songs)
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "exit"
    exit_jukebox
  else
    puts "Invalid"
  end

  if user_input != "exit"
    run(songs)
  end
end
