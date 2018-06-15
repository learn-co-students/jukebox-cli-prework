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
  puts  "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
  
    
end 

def play(arr)
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
   user_input = gets.chomp.to_i
   if user_input < 1 || user_input > 9 
     puts "Invalid input, please try again".chomp
     
   end
   by_name_input  = gets.chomp
  
  by_number =  songs[user_input-1]
  by_name = songs.select {|ele| ele.start_with?(by_name_input)}
  puts by_number
  puts by_name
  
  
end 


def list(songs)
  songs.each {|ele| puts "#{ele}"}
  
  
  
  
end


def exit_jukebox()
  puts "Goodbye"
  
end


def run(songs)
  puts "Please enter a command:"
  if gets.chomp == "help"
    help
  
  end
  
  if gets.chomp == "exit"
    
    exit_jukebox 
    
  end
  
  
  
end 