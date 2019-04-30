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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  songOutput = ""
  puts "Please enter a song name or number:"
  userInput = gets.chomp
  songs.unshift("")
    songs.each_with_index do |song, index|
      if song == userInput.to_s || index == userInput.to_i
        songOutput = song
      end
  end
  if songOutput.empty?
    puts "Invalid input, please try again"
  else
    puts "Playing #{songOutput}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = ""
  until answer == "exit"
    answer = gets.chomp
    if answer == "list"
      list(songs)
    elsif answer == "play"
      play(songs)
    elsif answer == "exit"
      exit_jukebox
    end
  end
end

