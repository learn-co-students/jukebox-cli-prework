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
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end 

def list(songs)
  counter = 1
  songs.each do |element|
    puts "#{counter}. #{element}" 
    counter += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if (1..songs.length).include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{songs[songs.index(user_input)]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  command =""
  help
  loop do 
    puts "Please enter a command:"
    command = gets.strip
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
    end
    break if command == "exit"
  end 
end


