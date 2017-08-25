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
  puts "I accept the following commands:\n"
  puts "- help : displays this help message\n"
  puts "- list : displays a list of songs you can play\n"
  puts "- play : lets you choose a song to play\n"
  puts "- exit : exits this program\n"
end

def play(songs)
  puts "Please enter a song number:"
  i = gets.chomp
  if songs.include?(i)
    puts "Playing #{i}"
  elsif i.to_f.between?(1, songs.length)
    puts "Playing #{songs[i.to_f - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index { |v, i| puts "#{i+1}. #{v}" }
end

def exit_jukebox
 puts "Goodbye"
end

def run(songs)
  help
  ans = ""
  while ans !="exit" do
    puts "Please enter a command:"
    ans = gets.chomp
    case ans
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
      end
  end

  if ans == "exit"
    exit_jukebox
  end
end
