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
  puts "(?=.*help)(?=.*list)(?=.*play)(?=.*exit)."
end

def list(songs)
  songs.each.with_index { |song, i|
    puts "#{i+1} #{song}"
  }
end

def play(songs)
  selection = gets.downcase.strip
  song_output = "Invalid input, please try again"
  songs.each.with_index { |song, i|
    song_output = "#{i+1} #{song}" if(selection == song.downcase || selection == "#{i+1}")
  }
  puts song_output
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.downcase.strip

  while command != "exit"
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      else
        puts "Invalid command, please try again"
    end
    puts "Please enter a command:"
    command = gets.downcase.strip
  end
  exit_jukebox
end