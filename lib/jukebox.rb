  require "pry"
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
    songs.each.with_index(1) do |song, index|
      puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
    #songs.each_with_index { |song, num|
        #index = "#{num+1}"
        if songs.include?(users_input)
          puts "#{users_input}"
        elsif users_input.to_i > 0 && users_input.to_i <= songs.length
          puts "#{songs[users_input.to_i-1]}"
        else
          puts "Invalid input, please try again"
        end
    #  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"

  input = gets.chomp
  if input == "list"
    list(songs)
  elsif
    input == "play"
    play(songs)
  elsif
    input == "help"
    help
  else input == "exit"
    exit_jukebox
  end
end
