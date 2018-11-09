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
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end

  def list(songs)
songs.each_with_index do |value, i|
  puts "#{i+1}. #{value}"
end
  end

  def play(songs)
    puts "Please enter a song name or number:"
input = gets.chomp
songs.each_with_index do |value, i|
  if (i + 1) == input.to_i
    puts "Playing #{value}"
elsif value == input
  puts "Playing #{value}"
else puts "Invalid input, please try again"
end
end
  end

  def exit_jukebox
puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
input = gets.chomp
case input
when "help"
  help
  run(songs)
when "list"
  list(songs)
  run(songs)
when "play"
  play(songs)
  run(songs)
when "exit"
  exit_jukebox
else
  help
  run(songs)
end
end
