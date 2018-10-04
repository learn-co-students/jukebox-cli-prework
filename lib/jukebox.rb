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
  puts <<-HEREDOC
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
  HEREDOC
end

def play(songs)
  puts "Please enter a song name or number: "
  response = gets.chomp
    if (1..songs.length).to_a.include?(response.to_i)
      puts "Playing #{songs[response.to_i-1]}"
    elsif songs.include?(response)
      puts "Playing #{response}"
    else
      puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    index += 1
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  response = nil
  puts "Please enter a command:"
  while response != "exit"
    response = gets.chomp
    if response ==  "list"
      list songs
    elsif response == "play"
      play songs
    elsif response =="help"
      help
    else
      puts "invalid entry"
    end
  end
  exit_jukebox
end
