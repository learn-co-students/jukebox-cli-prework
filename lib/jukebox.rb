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

#def say_hello(name)
  #{}"Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index do |elements, index|
    puts "#{index + 1}. #{elements}"
  end
end

def play(songs)
  answer = gets.chomp
  puts "Please enter a song name or number:#{answer}"
  songs.each.with_index do |music, index|
    if answer == music || answer == (index + 1).to_s
      puts "Playing #{music}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = gets.chomp
  x = "Please enter a command:#{user_input}"
  puts x
  loop do puts x
    if user_input == "exit"
      exit_jukebox
    elsif user_input == "help"
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    end
    break
  end
end
