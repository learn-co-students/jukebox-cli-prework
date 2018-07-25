require 'pry'

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
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if list(songs).include?(user_song)
    puts "Playing #{user_song}"
  elsif (1..9).to_a.include?(user_song.to_i)
    puts "Playing #{songs[user_song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  user_input = ""
  help
  unless user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.downcase.chomp
    case user_input 
    when "list"
      list(songs)
    when "play"
      list(songs)
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      exit
    else
      help
    end
  end
end


