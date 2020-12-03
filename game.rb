class Game
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
    @screen_size = 72
  end

  def title_screen
    puts text_border
    File.readlines('aa/title.txt').each do |line|
      puts line
    end
    puts 'The greatest triangle relation game'.center(@screen_size)
    puts text_border
  end

  def name_input
    print "\nようこそzyankenへ❗\nプレイヤー名を入力してください -> "
    name = gets.chop
    @player_name = name unless name.empty?
  end

  def mode_select
    puts "『#{@player_name}』さんですね？ようこそ！"
    sleep 0.5
    puts "ルールは簡単です！じゃんけんです！"
    sleep 0.5
    puts "相手に勝利したら10コインから30コインもらえます"
    sleep 0.5
    puts "負けたら5コイン失くなります"
    sleep 0.5
    puts "所持コインが100コインに達したら勝利です！\n\n"
    sleep 0.3
    select_mode_msg = "ゲームモードを選択してください ->"
    mode = TTY::Prompt.new.select(select_mode_msg) do |menu|
      menu.choice '🐵  EASY(初期45コインでスタート)', {difficulty: :easy, funds: 45}
      menu.choice '😀  NORMAL(初期15コインでスタート)', {difficulty: :normal, funds: 15}
      menu.choice '👹  HARDCORE(No resurrection)', {difficulty: :hardcore, funds: 0}
    end
    @funds = mode[:funds]
    sleep 0.1
    puts "#{mode[:difficulty].capitalize}モード(資金#{@funds}コイン)でゲームを開始します👾\n\n"
    3.times do |i|
      puts "."
      sleep 0.2
    end
    puts 'Enterを押したら次に進みます...'
    gets.chop
  end

  def prologue
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
    @enemy_name = setting[:teki]

    prologue = [
      "#{@player_name}は、一見普通の美少女だが実は#{setting[:zokuse]}なヒロインと#{setting[:basyo]}で出会う。",
      "#{@enemy_name}により失われた#{setting[:irai]}の#{setting[:taisyo]}を取り戻すべく、\n#{@player_name}とヒロインはタッグを組む。",
      "#{setting[:jyunbi]}、#{@enemy_name}との決戦に挑む。",
      "ヒロインは見事な#{setting[:zokuse]}っぷりを発揮し、#{@enemy_name}を追い詰めるが",
      "#{@enemy_name}#{setting[:pinch]}、窮地に陥る。",
      "だが、その時、#{@player_name}の隠れた#{setting[:noryoku]}が発動。#{@enemy_name}に打ち勝つ。",
      "二人は#{setting[:taisyo]}を取り戻したが、#{setting[:oti]}",
    ]

    prologue.each do |r|
      r.chars do |c|
        print c
        sleep 0.0005
      end
      puts "\n\n"
      sleep 0.01
    end
    3.times do |i|
      puts "."
      sleep 0.2
    end
    puts 'Enterを押したら次に進みます...'
    gets.chop
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

  def result_msg(player_hand, enemy_hand)
    puts "相手は..."
    text_spin
    puts "\e[31m" + "#{@rps_res[player_hand][enemy_hand]}" + "\e[0m" + "をだした！！"
    sleep 1.5
  end

  def show_status
    puts text_border
    puts "#{@player_name}の所持コイン: #{@funds}".center(@screen_size)
    puts text_border
  end

  def check_ending
    if @funds < 0
      @ending = :bad_end
    elsif @funds >= 100
      @ending = :good_end
    end
  end

  def enemy_speak(message)
    File.readlines('aa/enemy_face.txt').each do |line|
      puts line
    end
    print "#{red_text(@enemy_name)}"
    puts "「#{message}」\n"
  end

  def red_text(str)
    "\e[31m" + str + "\e[0m"
  end

  def text_border
    '-' * @screen_size
  end

  def text_spin
    5.times do
      %W(\\ | / -).each do |m|
        print "\r#{m}"
        sleep 0.05
      end
    end
    print "\r"
  end

  private

  def draw_game
    @result = :draw
  end

  def player_lose
    @result = :lose
    @funds += -5
  end

  def player_win
    @result = :win
    @profit = rand(10..30)
    @funds += @profit
  end
end