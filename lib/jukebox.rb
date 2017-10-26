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

def list (songs)
  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  index = 0
  item = ""
  songs.each_with_index do |item, index|
    index = index+1
    if answer === index.to_s
      puts "Playing #{item}."
      return
    elsif answer === item
      puts "Playing #{item}."
      return
    end
  end
  if answer != index.to_s && answer != item
      puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  unless command === "exit"
    if command === "help"
       help
    elsif command === "list"
      list (songs)
    elsif command === "play"
      play(songs)
    end
  else
    return exit_jukebox
  end
end

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)
