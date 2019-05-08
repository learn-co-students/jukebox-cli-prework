
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
  songs.each do |song|
    puts song
  end
end
def play(songs)
  list(songs)
  puts "Please enter a song name or number:"
  user_request=gets.chomp
  songs.each do |song,i|
    if user_request == song
    puts "playing #{songs}"
  elsif user_request==song.to_i-1
      puts "Now playing #{songs[user_request] }"

else 
  puts "Invalid input, please try again"
end
end
end


def exit_jukebox 
  puts "Goodbye."
end
def run(songs)
  help()
  puts "Please enter a command:"
  user_response=gets.chomp
  if user_response=="exit"
    exit_jukebox()
  end
end
  
  
  
  
  
  
  
  
  
  
  
  
  

