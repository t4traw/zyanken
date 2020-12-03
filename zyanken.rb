require 'tty'
require 'yaml'
require './game.rb'

module Helper
  def self.clear_screen
    puts "\e[H\e[2J"
  end
end

Helper.clear_screen
game = Game.new
game.title_screen
game.name_input
game.mode_select
Helper.clear_screen
game.prologue

enemy_lines = YAML.load_file('enemy_lines.yml')
until game.ending
  Helper.clear_screen
  game.show_status
  game.enemy_speak("サァ！ジャンケンダッ！")
  sleep 0.5
  game.zyanken
  case game.result
  when :draw
    Helper.clear_screen
    puts "じゃんけんはあいこだ！"
    sleep 0.5
    game.enemy_speak(enemy_lines["draw"].sample)
  when :win
    Helper.clear_screen
    puts "じゃんけんに勝った！"
    sleep 0.5
    puts "#{game.profit}コインをもらった！"
    sleep 0.5
    game.enemy_speak(enemy_lines["lose"].sample)
  when :lose
    Helper.clear_screen
    puts "じゃんけんに負けた！"
    sleep 0.5
    puts "コインが-3された！"
    sleep 0.5
    game.enemy_speak(enemy_lines["win"].sample)
  end
  first_time = false
  3.times do |i|
    puts "."
    sleep 0.5
  end
  puts 'Enterを押したら次に進みます...'
  gets.chop
  game.check_ending
end

case game.ending
when :good_end
  Helper.clear_screen
  puts 'せかいにへいわがおとずれた'
  puts 'GOOD END'
when :bad_end
  Helper.clear_screen
  puts 'だー'
  puts 'BAD END'
end
