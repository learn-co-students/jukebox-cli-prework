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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp 
  if songs.include?(choice) 
    puts "Playing #{choice}"
  elsif songs.each_with_index do |song, i|
    if choice.to_i == i
    puts "playing #{songs[i-1]}"
  elsif 
    puts "Invalid input, please try again"
      end
    end
  end 
end 

def list(songs)
  songs.each_with_index { |item, index| p "#{index + 1}:#{item}" }
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help 
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
  case command
  when "help"
  help 
  when "list"
  list(songs)
  when "play"
  play(songs)
  when "exit"
  exit_jukebox
  else
  "Error: Command has an invalid value (#{command})"
   puts "Please enter a command:"
   command = gets.chomp
  end
end 
end 
