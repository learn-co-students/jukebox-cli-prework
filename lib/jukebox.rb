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
  puts "Please enter a command: "
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number: "
  song_choice = gets.chomp
  songs.each_with_index do |track, index|
    if song_choice == track
      puts "Playing #{track}"
      return
    elsif song_choice.to_i == (index + 1)
        puts "Playing #{track}"
        return
    end
  end
  puts "Invalid input, please try again"
  song_choice = gets.chomp
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command: "
  command = "c"
  while command.downcase != "exit"
    command = gets.chomp
    if command.downcase == "help"
      help
      command
    elsif command.downcase == "list"
      list(songs)
      command
    elsif command.downcase == "play"
      play(songs)
      command
    elsif command.downcase == "exit"
      exit_jukebox
    end
  end
end
