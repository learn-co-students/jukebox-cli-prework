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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  message = "Playing "

  if songs.include? input
    puts message << input
  elsif input.to_i > 0 && input.to_i <= songs.size
    puts message << songs[input.to_i-1]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.chomp
    case command
      when "help"
        help()
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "exit"
        exit_jukebox()
        break
      else
        help()
      end
    end
end
