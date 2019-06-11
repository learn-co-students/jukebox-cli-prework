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

def run (songs)
  help
  while true
    puts "Please enter a command:"
    response = gets.chomp
    case response
      when "help"
        help
      when "play"
        play (Songs)
      when "exit"
        exit_jukebox
        return
      when "list"
        list (songs)

    end #case

  end #while

end #run

def exit_jukebox
  puts "Goodbye"
end

def list (songs)
  songs.each_index do |i|
    puts i.to_s + ". " + songs[i]
  end
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
    if songs.include? (song)
      puts "Playing <#{song}>"
      return
    end
    if song.to_i >= 1 && song.to_i <= songs.size #(1..songs.length).include?(song)
      puts "Playing <#{songs[song.to_i - 1]}>"
      return
    end
  puts "Invalid input, please try again"
end
