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
  puts "I accept the following commands:"
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
  user_answer = gets.strip
  if songs.include?(user_answer)
    puts "Playing #{user_answer}"
  elsif user_answer.to_i.between?(1, 9)
    puts "Playing #{songs[user_answer.to_i - 1]}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Welcome to the jukebox!"
  help
  puts "Please enter a command:"
  loop do
    user_answer = gets.strip
    if user_answer == "exit"
      exit_jukebox
      break
    elsif user_answer == "help"
      help
    elsif user_answer == "list"
      list(songs)
    elsif user_answer == "play"
      play(songs)
    end
  end
end
