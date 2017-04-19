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
end

def list(songs)
  songs.each{ |song| puts "#{songs.index(song)+1}. #{song}" }
end

def play(songs)
  input = gets.chomp

  if input.to_i > 0 && input.to_i < songs.length
    puts "#{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "#{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.chomp

  if command == "help"
    help
    run(songs)
  elsif command == "play"
    play(songs)
    run(songs)
  elsif command == "list"
    list(songs)
    run(songs)
  elsif command == "exit"
    exit_jukebox
  end
end
