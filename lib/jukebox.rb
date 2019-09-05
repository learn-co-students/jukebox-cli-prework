require "pry"
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

  puts "- I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)

    songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"  
  end 
end

def play(songs)
  
    puts "Please enter a song name or number:"
    input = gets.strip
  
  if input.to_i == 0
    if songs.include?(input)
      puts "Playing #{input}"
     else 
       puts "Invalid input, please try again"
   end
    
     else 
   
   if input.to_i > songs.size
    
       puts "Invalid input, please try again"
      
    else
       puts "Playing #{songs[input.to_i - 1]}"
    end 
  end 
end 

def exit_jukebox 
   puts "Goodbye"
end 



def run(songs)
  
  go = true
  
  while go == true
    
    puts "Please enter a command:"
  
    input = gets.strip
    if input == "help"
      help
    elsif input == "exit"
      go = false
      exit_jukebox
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    else
      exit_jukebox
      go = false
    end
  end
end 





