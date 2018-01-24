require 'tty'
require 'yaml'
require 'pry'

module ZyankenHelper
  def stand_by____stand_by____go!
    5.times do
      %W(\\ | / -).each do |m|
        print "\r#{m}"
        sleep 0.05
      end
    end
    print "\r"
  end

  def self.border
    '-----------------------------------------------------------------'
  end
end

class Game
  include ZyankenHelper
  attr_accessor :player_name, :enemy_name, :funds
  attr_reader  :funds, :profit, :result, :ending

  def initialize
    @player_name = 'ななし'
    @enemy_name = '相手'
    @funds = 45
    @result = nil
    @ending = nil
    @profit = 0
    @rps_res = {
      rock: ['グー', 'パー', 'チョキ'],
      paper: ['パー', 'チョキ', 'グー'],
      scissors: ['チョキ', 'グー', 'パー']
    }
  end

  def zyanken
    player = TTY::Prompt.new.select('あなたがだしたのは...') do |menu|
      menu.choice 'グー！', {hand: :rock}
      menu.choice 'チョキ！', {hand: :scissors}
      menu.choice 'パー！', {hand: :paper}
    end
    judgment(player[:hand])
  end

  def judgment(player_hand)
    case enemy_hand = rand(3)
    when 0 # draw
      result_msg(player_hand, enemy_hand)
      draw_game
    when 1 # lose
      result_msg(player_hand, enemy_hand)
      player_lose
    when 2 # win
      result_msg(player_hand, enemy_hand)
      player_win
    end
  end

  def show_status
    puts ZyankenHelper.border
    puts "#{@player_name}の所持コイン: #{@funds}".center(ZyankenHelper.border.size)
    puts ZyankenHelper.border
  end

  def check_ending
    if @funds < 0
      @ending = :bad_end
    elsif @funds >= 100
      @ending = :good_end
    end
  end

  def enemy_speak(str)
    puts %{                  ,_ }
    puts %{        _,..._  ,d$$ccc_ }
    puts %{       d$$$$$$hc$$$$$$$$h. }
    puts %{     ,d$$$$$$$$$$$$$$$O$$$. }
    puts %{    ,$$$$h$$$$$FF$$$$$$$$$| }
    puts %{   ,d$$$$$h$$F;' `F$$;':?$' }
    puts %{   d$$F?$$$F'      ',c. +' }
    puts %{  d$$h     c$$h    $$$$'| }
    puts %{ d$$$h    $$F'     `' ' | }
    puts %{ $$$$$L   `',-.    ,`.  | }
    puts %{ $$$$$$h   .'  `      | | }
    puts %{ d$$$$$$   |        O ' `. }
    puts %{  $$$$$F   | O  , __. , | | }
    puts %{   Y$FF'      ,' '  )"  |_| }
    puts %{   ;"'      "'   __/    |' }
    puts %{  |,`.        /      ,  | }
    puts %{  |  |      .'`--..-'   | }
    puts %{  `. `       (.___,/    | }
    puts %{    `._,.     \\   .'   | }
    puts %{         \\     \\_,'    | }
    puts %{          \\           / }
    puts %{           `.        / }
    puts %{             `-....-' }
    print "\e[31m" + @enemy_name + "\e[0m"
    puts "「#{str}」\n"
  end

  private

  def result_msg(player_hand, enemy_hand)
    puts "相手は..."
    stand_by____stand_by____go!
    puts "\e[31m" + "#{@rps_res[player_hand][enemy_hand]}" + "\e[0m" + "をだした！！"
    sleep 3
  end

  def draw_game
    @result = :draw
  end

  def player_lose
    @result = :lose
    @funds += -3
  end

  def player_win
    @result = :win
    @profit = rand(5..20)
    @funds += @profit
  end
end

puts "\e[H\e[2J"
puts ZyankenHelper.border
puts '  ███████╗██╗   ██╗ █████╗ ███╗   ██╗██╗  ██╗███████╗███╗   ██╗'
puts '  ╚══███╔╝╚██╗ ██╔╝██╔══██╗████╗  ██║██║ ██╔╝██╔════╝████╗  ██║'
puts '    ███╔╝  ╚████╔╝ ███████║██╔██╗ ██║█████╔╝ █████╗  ██╔██╗ ██║'
puts '   ███╔╝    ╚██╔╝  ██╔══██║██║╚██╗██║██╔═██╗ ██╔══╝  ██║╚██╗██║'
puts '  ███████╗   ██║   ██║  ██║██║ ╚████║██║  ██╗███████╗██║ ╚████║'
puts '  ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝'
puts 'The greatest triangle relation game'.center(ZyankenHelper.border.size)
puts ZyankenHelper.border

game = Game.new

print "\nようこそzyankenへ❗\nプレイヤー名を入力してください -> "
name = gets.chop
game.player_name = name unless name

select_mode_msg = "『#{game.player_name}』さんですね❓\nゲームモードを選択してください ->"

end_contents = true
mode = TTY::Prompt.new.select(select_mode_msg) do |menu|
  menu.choice '🗿  DEBUG', {difficulty: :debug, funds: 999999} if end_contents
  menu.choice '🐵  EASY(初期45コインでスタート)', {difficulty: :easy, funds: 45}
  menu.choice '😀  NORMAL(初期15コインでスタート)', {difficulty: :normal, funds: 15}
  menu.choice '👹  HARDCORE(No resurrection)', {difficulty: :hardcore, funds: 0} if end_contents
end

game.funds = mode[:funds]

msg_speed = 1
case mode[:difficulty]
when :normal
  msg_speed = 5
when :hardcore
  msg_speed = 100
end

puts "\e[H\e[2J"
puts "#{mode[:difficulty].capitalize}モード(資金#{game.funds}コイン)でゲームを開始します👾\n\n"
sleep (1.5 / msg_speed)
puts "ルールは簡単です！じゃんけんです！"
sleep (1.5 / msg_speed)
puts "相手に勝利したら5コインから20コインもらえます"
sleep (1.5 / msg_speed)
puts "負けたら3コイン失くなります"
sleep (1.5 / msg_speed)
puts "所持コインが100コインに達したら勝利です！\n\n"
sleep (1.5 / msg_speed)


# ================================================================
# どうでもいいプロローグ
# この文章は↓のページの内容をパクりました😉
# http://www.geocities.jp/shinonomenod/lanoara.html

story = YAML.load_file('story.yml')
setting = {
  zokuse: story["zokuse"].sample,
  basyo: story["basyo"].sample,
  teki: story["teki"].sample,
  irai: story["irai"].sample,
  taisyo: story["taisyo"].sample,
  jyunbi: story["jyunbi"].sample,
  pinch: story["pinch"].sample,
  noryoku: story["noryoku"].sample,
  oti: story["oti"].sample,
}

prologue = [
  "-------------------------------------------------------------",
  "#{game.player_name}は、一見普通の美少女だが実は#{setting[:zokuse]}なヒロインと#{setting[:basyo]}で出会う。",
  "#{setting[:teki]}により失われた#{setting[:irai]}の#{setting[:taisyo]}を取り戻すべく、\n#{game.player_name}とヒロインはタッグを組む。",
  "#{setting[:jyunbi]}、#{setting[:teki]}との決戦に挑む。",
  "ヒロインは見事な#{setting[:zokuse]}っぷりを発揮し、#{setting[:teki]}を追い詰めるが",
  "#{setting[:teki]}#{setting[:pinch]}、窮地に陥る。",
  "だが、その時、#{game.player_name}の隠れた#{setting[:noryoku]}が発動。#{setting[:teki]}に打ち勝つ。",
  "二人は#{setting[:taisyo]}を取り戻したが、#{setting[:oti]}",
  "-------------------------------------------------------------"
]

prologue.each do |r|
  r.chars do |c|
    print c
    sleep (0.02 / msg_speed)
  end
  puts "\n\n"
  sleep (1.5 / msg_speed)
end
3.times do |i|
  puts "."
  sleep (0.5 / msg_speed)
end
puts '何か入力されたら次に進みます...'
gets.chop

# どうでもいいプロローグおわり
# ================================================================

game.enemy_name = setting[:teki]
enemy_lines = YAML.load_file('enemy_lines.yml')

first_time = true
until game.ending
  puts "\e[H\e[2J"
  game.show_status unless first_time
  game.enemy_speak("サァ！ジャンケンダッ！")
  sleep 1
  game.zyanken
  case game.result
  when :draw
    puts "\e[H\e[2J"
    puts "じゃんけんはあいこだ！"
    sleep 2
    game.enemy_speak(enemy_lines["draw"].sample)
  when :win
    puts "\e[H\e[2J"
    puts "じゃんけんに勝った！"
    sleep 1.6
    puts "#{game.profit}コインをもらった！"
    sleep 2
    game.enemy_speak(enemy_lines["lose"].sample)
  when :lose
    puts "\e[H\e[2J"
    puts "じゃんけんに負けた！"
    sleep 1.6
    puts "コインが-3された！"
    sleep 2
    game.enemy_speak(enemy_lines["win"].sample)
  end
  first_time = false
  3.times do |i|
    puts "."
    sleep 0.5
  end
  puts '何か入力されたら次に進みます...'
  gets.chop
  game.check_ending
end

case game.ending
when :good_end
  puts "\e[H\e[2J"
  puts 'せかいにへいわがおとずれた'
  puts 'GOOD END'
when :bad_end
  puts "\e[H\e[2J"
  puts 'だー'
  puts 'BAD END'
end