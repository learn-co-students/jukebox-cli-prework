# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song,i| puts "#{i + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  #loop do
    selection = gets.chomp.downcase
    # words.to_i are turned into 0
    if selection.to_i == 0 
      if songs.map(&:downcase).include?(selection)
        selection = selection.split.map(&:capitalize).join(" ")
        puts "Playing #{selection}"
        #break
      else 
        puts "Invalid input, please try again"
      end
    # any other number than 0 means a real number was entered
    elsif selection.to_i <= songs.length
      puts "Playing #{songs[selection.to_i - 1]}"
      #break 
    #elsif selection == "exit"
      #break
    else
      puts "Invalid input, please try again"
    end
  #end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    ans = gets.strip.downcase
    case ans
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
    end
  end
end