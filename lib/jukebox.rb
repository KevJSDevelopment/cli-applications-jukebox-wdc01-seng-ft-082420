# Add your code here
#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)
require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(song_array)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if song_array.include?(song) 
    puts "Playing #{song}"
  elsif song.to_i > 0 && song.to_i <= song_array.length
    puts "Playing #{song_array[song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
  # song_num = 0
  # x = Integer(song) rescue false
  # if x
  #   song_num = song.to_i
  # else
  #   song_string = song
  # end
  # while song_num < 1 || song_num > song_array.length || song_string == song && !song_array.include?(song_string) do
  #   puts "Invalid input, please try again"
  #   song = gets.chomp
  #   x = Integer(song) rescue false
  #   if x
  #     song_num = song.to_i
  #   else
  #     song_string = song
  #   end
  # end
end

def list(song_array)
  song_num = 1
  iterator = 0;
  while iterator < song_array.length do
    puts "#{song_num}. #{song_array[iterator]}"
    iterator += 1
    song_num += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  not_exited = true
  while not_exited == true do
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == 'list'
      list(songs)
    elsif user_input == 'play'
      play(songs)
    elsif user_input == 'help'
      help
    elsif user_input == 'exit'
      exit_jukebox
      not_exited = false
    end
  end
end