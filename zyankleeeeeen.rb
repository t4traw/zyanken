def main
    p 'choose your hand'
    p 'Enter choki or goo or par'
    while str = STDIN.gets
        if str.chomp == 'choki' || str.chomp == 'goo' || str.chomp == 'par' then
            janken
        else
            p '英語も読めんとかマジ？？？？？？？？？'
        end
    end
end

def janken
    i = rand(3)
    if i == 0
        win
    elsif i == 1
        tie
    elsif i == 2
        lose
    else
        p 'すげえエラーだ。お前には才能がある。'
    end
end

def win
    print '君の勝ちや！！！！おめでとう！！！！！！！[Enter]'
    STDIN.gets
    p 'ご褒美にAWSのファイル全部消してあげるね！！！！'
    delete
    exit
end

def tie
    print 'あいこやん、もう一回やるぞ[Enter]'
    STDIN.gets
    main
end

def lose
    print '残念！！君の負けだよ！！！！！！！！！！！！！！！！！[Enter]'
    STDIN.gets
    p 'ざっこｗお前のAWSのファイル全部消したるわｗｗｗ'
    delete
    exit
end

def delete
    sleep(2)
    p 'ec2-user:~/environment $ sudo rm -rf /* '
    sleep(0.7)
    p 'password : **********'
    sleep(1.2)
    p 'file deleting ...'
    sleep(10000)
end

main