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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  i = 0
  until i == songs.length-1
    puts "#{i+1}. #{songs[i]}"
    i += 1
  end
end

def play(songs)  
  puts "Please enter a song name or number:"
  name_num = gets.chomp
    if songs.include?(name_num)
      puts "Playing: #{name_num}"
    elsif name_num.to_i > 0 && name_num.to_i < 10
      puts "Playing: #{songs[name_num.to_i-1]}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts help
  puts "Please enter a command:"
  cmd = gets.chomp
  if cmd == "help"
    puts help
  elsif cmd == "play"
    puts play
  elsif cmd == "list"
    puts list
  elsif cmd == "exit"
    puts exit_jukebox
    
  end


end

