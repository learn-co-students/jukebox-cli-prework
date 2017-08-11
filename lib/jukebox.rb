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
  #this method should be the same as in jukebox.rb
puts  "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

end



def list(songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  counter = 1
  songs.each do |name|
    puts "#{counter}. #{name}"
    counter +=1
  end
end


def play(songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  list = ('1'..songs.size.to_s).to_a
  puts "Please enter a song name or number:"
  response = gets.chomp.to_s
  if list.include?(response)
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(songs)
  #this method is the same as in jukebox.rb
  help
  puts "Please enter a command:"
  command = gets.chomp.to_s.downcase
  while command != 'exit'
    case command
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'help'
      help
    else
      'Invalid'
    end
    puts "Please enter a command:"
    command = gets.chomp.to_s.downcase
  end
  exit_jukebox
end
