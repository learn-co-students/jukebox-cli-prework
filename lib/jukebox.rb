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
=begin def say_hello(name)
  "Hi #{name}!"
end
puts "Enter your name:"
user_name = gets.chomp
puts say_hello(user_name)
=end 
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if user_song>0 && user_song<songs.size
    "Playing #{songs[user_song-1]}"
    
  elsif songs.find{|u_sing| u_sing == user_song}
    "Playing #{user_song}"
    
  else
    "Invalid input"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  exitted = false
  while exitted == false
    puts "Please enter a command:"
    user_resp = gets.chomp
    if user_resp == "help"
      help
    elsif user_resp == "exit"
      exit
      exitted = true
    elsif user_resp == "list"
      list(songs)
    elsif user_resp == "play"
      play(songs)
    else
      puts "Invalid input"
    end
  end
end