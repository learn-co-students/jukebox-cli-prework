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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program\n"
end

def list(songs)
  songs.each.with_index(1) do |name, index|
    puts "#{index}. #{name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_num = gets.chomp
  if song_num.to_i > 0 && song_num.to_i <= songs.length
    puts "Playing #{songs[song_num.to_i - 1]}"
  elsif songs.include? (song_num)
    puts "Playing #{song_num}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_ans = ""
  until user_ans == "exit"
    puts "Please enter a command:"
    user_ans = gets.chomp
    case user_ans
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts "Invalid command. Type \"help\" for help."
    end    
  end
end