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

#puts "Enter your name: "
#users_name = gets.chomp!

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  if array.include?(input)
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i <= array.length
    puts "Playing #{array[input.to_i - 1]}"
  else
    puts"Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  
  if command == "exit"
    exit_jukebox
  else
    while command != "exit"
      if command == "help"
        help
      elsif command == "list"
        list(songs)
      elsif command == "play"
        play(songs)
      elsif command == "exit"
        exit_jukebox
        break
      end
      puts "Please enter a command:"
      command = gets.chomp
    end
  end
end
