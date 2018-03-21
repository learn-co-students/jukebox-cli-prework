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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |track, index|
    puts "#{index+1}. #{track}"
  end
  # run(songs)
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp

  check_array = []

  songs.each_with_index do |track, index|
    if track.downcase.include? request.downcase
      puts "Playing #{track}"
      check_array << true
    elsif request.to_i == index + 1
      puts "Playing #{track}"
      check_array << true
    elsif request == "help"
      check_array << true
      help
      run(songs)
    else
      check_array << false
    end
  end
  if check_array.include?(true)
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
  response = gets.chomp
  if response == "exit"
    exit_jukebox
  elsif response == "list"
    list(songs)
  elsif response == "help"
    run(songs)
  elsif response == "play"
    play(songs)
  end
end
