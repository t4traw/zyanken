# initialize
UNIT = 'coins' # BTC/yen/USD
BET = 3
GOAL = 100
HANDLIST = {
  1 => 'Rock',
  2 => 'Paper',
  3 => 'Scissors'
}
GOOD = [
  'Good boy.',
  'Sounds Good!',
  'That’s cool.',
  'How wonderful!',
]
DUMMY_NAME = 'john'

$wallet = 10
$player_name = ''

def is_bool(v)
  !!v === v
end

def getter(param)
  case param
    when :money
      return "#{$wallet} #{UNIT}"
    when :goal
      return "#{GOAL} #{UNIT}"
    when :to_goal
      return "#{GOAL - $wallet} #{UNIT}"
    when :bet
      return "#{BET} #{UNIT}"
    when :good
      return GOOD[Random.new.rand(GOOD.length)]
  end
end

def get_hand
  while true
    puts '1:rock 2:paper 3:scissors [1|2|3]:'

    case gets
      when /^1/, /^rock/
        puts 'Player hand: Rock' 
        return 1
      when /^2/, /^paper/
        puts 'Player hand: Paper' 
        return 2
      when /^3/, /^scissors/
        puts 'Player hand: Scissors' 
        return 3
      else
        puts 'Please select [1|2|3]...'
    end
  end
end

def duel
  sleep(1)
  puts
  puts '_/_/_/_/_/_/_/_/_/_/'
  puts 'Jan-ken-po!'

  won = nil

  while true
    player_hand = get_hand
    enemy_hand = Random.new.rand(1..3)
    hands = HANDLIST.invert

    puts 'Enemy hand: ' + HANDLIST[enemy_hand]
    
    if player_hand == enemy_hand
      sleep(1)
      puts
      puts '_/_/_/_/_/_/_/_/_/_/'
      puts 'Ai-kono-sho!'
    
    elsif player_hand == hands['Rock']     && enemy_hand == hands['Scissors'] then won = true
    elsif player_hand == hands['Paper']    && enemy_hand == hands['Rock']     then won = true
    elsif player_hand == hands['Scissors'] && enemy_hand == hands['Paper']    then won = true

    elsif player_hand == hands['Rock']     && enemy_hand == hands['Paper']    then won = false
    elsif player_hand == hands['Paper']    && enemy_hand == hands['Scissors'] then won = false
    elsif player_hand == hands['Scissors'] && enemy_hand == hands['Rock']     then won = false
    end
    
    unless won.nil?
      sleep(1)
      break
    end
  end
  
  return won
end

while true
  puts 'Enter player name: '
  
  name = gets.strip
  unless name.empty?
    $player_name = name
  end
  
  puts "Your player name [#{$player_name}]? [y|n]"
  case gets
    when /^[yY]/
      puts "Set your player name: #{$player_name}"
      break
  end
end

sleep(1)
puts
puts "If you got [#{getter(:goal)}], it is game clear."
puts "You have [#{getter(:money)}]."
puts "You need [#{getter(:bet)}] to play game once."
sleep(1)

while true
  puts
  puts 'Let the games begin... [y|n]:'
  case gets
    when /^[yY]/
      puts getter(:good)
      $wallet -= BET
      break
    else
      puts 'Lame...Lame...Lame...'
      exit
  end
end

while true
  if duel
    prize = Random.new.rand(1..10)
    $wallet += prize
    
    sleep(1)
    puts
    puts 'Congrats, you won this game!'
    sleep(1)
    puts
    puts "You got [#{prize} #{UNIT}]."
    
    if $wallet > 99
      sleep(1)
      puts
      puts '_/_/_/_/_/_/_/_/_/_/'
      puts 'You are GOD.'
      puts
      exit
    end
  else
    sleep(1)
    puts
    puts 'Too bad, you lost this game!'
    
    if $wallet < 3 #破産
      sleep(1)
      puts
      puts '_/_/_/_/_/_/_/_/_/_/'
      puts 'You die.'
      puts
      exit
    end
  end
  
  sleep(1)
  puts
  puts '_/_/_/_/_/_/_/_/_/_/'
  puts "you have [#{getter(:money)}]."
  puts "[#{getter(:to_goal)}] to game clear."
  sleep(1)
  
  puts "Play more game? #{$player_name}? [y|n]"
  case gets
    when /^[yY]/
      puts getter(:good)
      $wallet -= BET
    when /^[nN]/
      puts 'Bye-bye!'
      return
    else
      puts 'Lame...Lame...Lame...'
      exit
  end
end

