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



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each_with_index do |song, index|
    puts (index + 1).to_s + ". " + song
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  answer = gets.chomp
  my_songs.each_with_index do |song, index|
    if answer == (index + 1).to_s || answer == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp

  while response != "exit"
    case response
      when "help"
        help
        puts "Please enter a command:"
        response = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        response = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        response = gets.chomp
      else
        puts "Invalid input, please try again"
        response = gets.chomp
    end
  end
  exit_jukebox
end
