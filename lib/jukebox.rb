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
  puts "I accept the folowing commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song you can play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_id = gets.chomp
  if songs.include?(song_id)
    puts "Playing #{song_id}"
  elsif ("1..10").include?(song_id)
    puts "Playing #{songs[song_id.to_i - 1 ]}"
  else
    puts "Invalid input, please try again"
    song_id
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  prompt = puts "Please enter a command:"
  while answer = gets.chomp
    case answer
    when "help"
      help
      prompt
    when "list"
      list(songs)
      prompt
    when "play"
      play(songs)
      prompt
    when "exit"
      exit_jukebox
      break
    end
end
exit_jukebox
end
