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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

    if songs.include?(response)
      puts "Playing #{response}"
    elsif (1..9).include?(response.to_i)
      puts "Playing #{songs[(response.to_i - 1).to_i]}"
    else
      puts "Invalid input, please try again"
    end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
    if command == "exit"
      exit_jukebox
      #break
    elsif command == "list"
      list(songs)
    elsif command == "help"
      help
    elsif command == "play"
      play(songs)
    end
end
