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
\n - help : displays this help message
\n- list : displays a list of songs you can play
\n- play : lets you choose a song to play
\n- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  if songs.include?(song_request)
    puts "Playing #{song_request}"
    elsif song_request.to_i > 0 && song_request.to_i <= songs.length 
      puts "Playing #{songs[song_request.to_i-1]}"
    #elsif song_request== "exit" || "stop"
     # help
    else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help
  puts "Please enter a command: "
  answer = ""
  answer = gets.chomp

  #until answer == "exit"
    case answer
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else "Invalid input, please type \"help\" for valid commands."
    end
  #end
end