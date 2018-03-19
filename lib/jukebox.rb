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
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end


def list(songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  songs.each_with_index do |song, index|
  puts "#{index+1}. #{song}"
end
end

def play(songs)
puts "Please enter a song name or number:"
input = gets.strip
if input.to_i > songs.length
  puts "Invalid input, please try again"
elsif input =~ /\A\d+\z/
    puts "Playing #{songs}.index(song.to_i)"
elsif songs[0..songs.length + 1].include?(input)
  puts "Playing #{input}"
else
  puts "Invalid input, please try again"
end
end



def exit_jukebox
  puts "Goodbye"
end


def run(songs)
help
puts "Please enter a command:"
response = gets.chomp
case response
    when 'help' then help
    when 'list' then list(songs)
    when 'play' then play(songs)
    when 'exit' then exit_jukebox
    else puts "Invalid input, please try again"
  end
end
