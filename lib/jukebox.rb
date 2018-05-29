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

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(array)
  array.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end
end

def play(array)
  response_array = []
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  array.each_with_index do |element, index|
    if song_choice == (index + 1).to_s || song_choice == element
      response_array.push(element)
    end
  end
  if response_array == []
    puts "Invalid input, please try again"
  else
    puts "Playing #{response_array[0].to_s}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help

  puts "Please enter a command:"
  user_response = gets.chomp

  until user_response == "exit"
    if user_response == "list"
      list(array)
    elsif user_response == "play"
      play(array)
    elsif user_response == "help"
      help
    end
    puts "Please enter a command:"
    user_response = gets.chomp
  end
  exit_jukebox
end
