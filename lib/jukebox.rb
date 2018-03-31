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
  input = gets.chomp
  if input == "1" || input == "Phoenix - 1901"
    puts "Playing #{songs[0]}"
  elsif  input == "2" || input == "Tokyo Police Club - Wait Up"
    puts "Playing #{songs[1]}"
  elsif  input == "3" || input == "Sufjan Stevens - Too Much"
    puts "Playing #{songs[2]}"
  elsif input == "4" || input == "The Naked and the Famous - Young Blood"
    puts "Playing #{songs[3]}"
  elsif input == "5" || input == "(Far From) Home - Tiga"
    puts "Playing #{songs[4]}"
  elsif input == "6" || input == "The Cults - Abducted"
    puts "Playing #{songs[5]}"
  elsif input == "7" || input == "Phoenix - Consolation Prizes"
    puts "Playing #{songs[6]}"
  elsif input == "8" || input == "Harry Chapin - Cats in the Cradle"
    puts "Playing #{songs[7]}"  
  elsif input == "9" || input == "Amos Lee - Keep It Loose, Keep It Tight"
    puts "Playing #{songs[8]}"
  else
    puts "Invalid input, please try again"
  end
end
      
def list(songs)
  songs.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end
  end
end