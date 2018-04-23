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
  #"Hi #{name}!"
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

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  request = gets.chomp
  if songs_array.include?(request)
    puts "Playing #{request}"
  elsif (1..songs_array.length).to_a.include?(request.to_i)
    puts "Playing #{songs_array[request.to_i - 1]}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  arg = ""
  while arg
    puts "Please enter a command:"
    arg = gets.chomp

    case arg
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
