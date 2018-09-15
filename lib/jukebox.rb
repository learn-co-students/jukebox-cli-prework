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
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  first_response = gets.chomp
  if songs.include?(first_response) #is a valid song name do below
    puts "Playing #{first_response}"
  elsif (1..9).to_a.include?(first_response.to_i) #if first_response as a number exists in array of 1-9 then do below.
    puts "Playing #{songs[first_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  help
  puts "Please enter a command:"
  decision = gets.chomp.downcase
  loop do
    if decision == 'list'
      list(songs)
      puts "Please enter a command:"
      decision = gets.chomp.downcase
    elsif decision == 'play'
      play(songs)
      puts "Please enter a command:"
      decision = gets.chomp.downcase
    elsif decision == 'help'
      help
      puts "Please enter a command:"
      decision = gets.chomp.downcase
    elsif decision == 'exit'
      exit_jukebox
      break
    end
  end
end
