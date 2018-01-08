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
  songs.each_with_index {|item, index| puts "#{index+1}: #{item}"}
end

def play(songs)
  number_choice = (0..9).to_a
  users_choice = gets.chomp
  if number_choice.include?(users_choice.to_i)
    puts "Playing #{songs[users_choice.to_i - 1]}"
  elsif songs.include?(users_choice)
    puts "Playing #{users_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = " "
  while input
  puts "Please enter a command:"
  input = gets.chomp
  case input
  when input == "help"
    help
  when input == "list"
    list(songs)
  when input == "play"
    play(songs)
  when input == "exit"
    exit_jukebox
    break
  else
    help
  end
end
end
