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
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do | song, index |
    puts "#{index+1}. #{song}"
  end
end

# def play(songs)
#   puts "Please enter a song name or number:"
#   users_reply = gets.chomp
#   valid_reply = false
#   songs.each_with_index do | song, index |
#     if users_reply == song or users_reply.to_i == index+1
#       puts "Playing #{song}"
#       valid_reply = true
#     end
#   end
#   puts "Invalid input, please try again" if valid_reply == false
# end

def play(songs)
  puts "Please enter a song name or number:"
  users_reply = gets.chomp
  if songs.include?(users_reply)
    puts "Playing #{users_reply}"
  elsif songs[users_reply.to_i-1]
    puts "Playing #{songs[users_reply.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  run_reply = gets.strip
  while run_reply != "exit"
    case run_reply
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
    puts "Please enter a command:"
    run_reply = gets.strip
  end
  exit_jukebox
end


