# 0: グー   : rock
# 1: パー   : paper
# 2: チョキ : scissors
#
# Memo: 
# Jan-ken-po!
# Ai-kono-sho!
WALLET = 0   # 初期コイン
GOAL   = 100 # 目標コイン
INVEST = 3   # 投入コイン

def lame
  puts 'Lame...Lame...Lame...'
  exit
end

def get_my_hand(s)
  case s
    when /^1/, /^rock/
      puts 'Your hand: Rock' 
      return 1
    when /^2/, /^paper/
      puts 'Your hand: Paper' 
      return 2
    when /^3/, /^scissors/
      puts 'Your hand: Scissors' 
      return 3
    else
      return 0
  end
end

def get_enemy_hand
  r = Random.new.rand(1..3)
  case r
    when /^1/, /^rock/
      puts 'Enemy hand: Rock' 
      return 1
    when /^2/, /^paper/
      puts 'Enemy hand: Paper' 
      return 2
    when /^3/, /^scissors/
      puts 'Enemy hand: Scissors' 
      return 3
    else
      return 0
  end
end

def jan_ken_po(msg)
  while true
    puts msg
    sleep(1)
    puts '1:rock 2:paper 3:scissors [1|2|3]:'
    
    hand = get_my_hand(gets)
    if hand.zero?
      puts 'Please select [1|2|3]'
    else
      return hand
    end
  end
end

def ai_kono_sho(msg)
  while true
    puts msg
    sleep(1)
    puts '1:rock 2:paper 3:scissors [1|2|3]:'
    
    hand = get_my_hand(gets)
    if hand.zero?
      puts 'Please select [1|2|3]'
    else
      return hand
    end
  end
end


puts 'Let the games begin... [y|n]:'
message = 

while true
  
  case gets
    when /^[yY]/
      puts 'The game has started!'
      sleep(1)
      
      my_hand    = jan_ken_po("Jan-ken-po!")
      enemy_hand = get_enemy_hand
      
      if my_hand == enemy_hand
        # aiko shori
      end
      
      exit

      if duel
        hand = [
          :rock     => 1,
          :paper    => 2,
          :scissors => 3
        ]
           if my_hand == hand[:rock] && enemy_hand == hand[:paper]     then flag = true
        elsif my_hand == hand[:paper] && enemy_hand == hand[:scissors] then flag = true
        elsif my_hand == hand[:scissors] && enemy_hand == hand[:rock]  then flag = true

        elsif my_hand == hand[:rock] && enemy_hand == hand[:scissors]  then flag = false
        elsif my_hand == hand[:paper] && enemy_hand == hand[:rock]     then flag = false
        elsif my_hand == hand[:scissors] && enemy_hand == hand[:paper] then flag = false
           end
        
        return
      end
    else
      lame
  end
end