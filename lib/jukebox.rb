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
  puts "I accept the following commands:
  - help: displays this help message
  - list: displays a list of songs you can play
  - play: lets you choose a song to play
  - exit: exits this program"
end  

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end  

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, idx|
    if song.include?(input)
      puts "Playing #{song}"
    elsif input == (idx + 1) 
      puts "Playing #{song}"
    else song.include?(input) == false || input != (idx + 1) 
      puts "Invalid input, please try again"
    end 
  end
end  

def exit_jukebox
  puts "Goodbye"
end  

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  if input == "list"
    list(songs)
  elsif input == "play" 
    play(songs)
  elsif input == "help"
    help
  else input == "exit"
    exit_jukebox
  end  
end  
  
  