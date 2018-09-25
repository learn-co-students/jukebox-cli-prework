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
  songs.each_with_index do |track, number|
    puts "#{number+1}. #{track}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  

  if (1..9).to_a.include?(choice.to_i)
    puts "Playing #{songs[choice.to_i - 1]}"
  elsif songs.include?(choice)
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # help

  choice = ""
  
  while choice
    puts "Please enter a command:"
    i = gets.chomp
    case i
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    
    end
  end
end