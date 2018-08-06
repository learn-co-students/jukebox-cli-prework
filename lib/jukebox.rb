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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  playing = nil
  if songs.include?(response)
    playing = songs.index(response)
    puts "#{songs[playing]}"
  elsif (1..songs.length).to_a.include?(response.to_i)
    # binding.pry
    playing = response.to_i
    puts "#{songs[playing - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = nil
  while response != "exit" do
    puts "Please enter a command:"
    response = gets.chomp
    case response
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
  end
  exit_jukebox
end