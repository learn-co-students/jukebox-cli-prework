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
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |songName, index|
    puts "#{index + 1}. #{songName}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  songChoice = gets.chomp 
  if songs.include?(songChoice)
    puts "Playing #{songChoice}"
  elsif (1..songs.length).include?(songChoice.to_i)
    puts "Playing #{songs[songChoice.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  reply = "start"
  help
  until reply == "exit"
  puts "Please enter a command:"
  reply = gets.chomp 
    if reply == "help"
      help
    elsif reply == "list"
      list(songs)
    elsif reply == "exit"
      exit_jukebox
      break
    elsif reply == "play"
      play(songs)
    end
  end
end
      
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  