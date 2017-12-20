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

  puts "I accept the following commands: \n
      - help : displays this help message \n
      - list : displays a list of songs you can play \n
      - play : lets you choose a song to play \n
      - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end

end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if songs.include?(input)
    song = input
    puts "Playing #{song}"
  elsif input.to_i > 0 && input.to_i < songs.count
    song = songs[input.to_i - 1]
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_response = ""


  while user_response != "exit"
    puts "Please enter a command:"
    user_response = gets.chomp

    case user_response

    when "help"
      help

    when "list"
      list(songs)

    when "play"
      list(songs)
      play(songs)

    when "exit"
      break
    else
      help
    end

  end
  exit_jukebox

end
