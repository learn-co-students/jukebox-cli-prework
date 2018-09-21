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

def help()
  puts 'I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program'
end
require 'pry'

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  new_song = "Playing "
  songs.each_with_index do |son, index|
    if son == song
      new_song = "Playing #{son}" 
      break
    elsif song.to_i == index+1
      new_song = "Playing #{son}"
      break
    else
        new_song = "Invalid input, please try again"
    end

  end
  puts new_song
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  command = gets.strip
  while command != "exit" do 
    
    case command
    when "play"
      
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    end
    puts "Please enter a command:"
    command = gets.strip
  end
  exit_jukebox
end
      
      
  

  
  

  




