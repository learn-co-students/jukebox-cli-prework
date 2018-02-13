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
  i = 1
  songs.each do |song|
    puts "#{i}. #{song}"
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  nums = []
  i = 1
  while i <= songs.length
    nums << i.to_s
    i += 1
  end
  
  if songs.include?(song)
    puts "Playing #{song}"
  elsif nums.include?(song)
    puts "Playing #{songs[song.to_i - 1]}"
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
  while command != "exit"
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    else
    end
    puts "Please enter a command:"
      command = gets.chomp
  end
  exit_jukebox
end  