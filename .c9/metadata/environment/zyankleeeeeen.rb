{"filter":false,"title":"zyankleeeeeen.rb","tooltip":"/zyankleeeeeen.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":0,"column":0},"end":{"row":57,"column":4},"action":"insert","lines":["def main","    p 'choose your hand'","    p 'Enter choki or goo or par'","    while str = STDIN.gets","        if str.chomp == 'choki' || str.chomp == 'goo' || str.chomp == 'par' then","            janken","        else","            p '英語も読めんとかマジ？？？？？？？？？'","        end","    end","end","","def janken","    i = rand(3)","    if i == 0","        win","    elsif i == 1","        tie","    elsif i == 2","        lose","    else","        p 'すげえエラーだ。お前には才能がある。'","    end","end","","def win","    print '君の勝ちや！！！！おめでとう！！！！！！！[Enter]'","    STDIN.gets","    p 'ご褒美にAWSのファイル全部消してあげるね！！！！'","    delete","    exit","end","","def tie","    print 'あいこやん、もう一回やるぞ[Enter]'","    STDIN.gets","    main","end","","def lose","    print '残念！！君の負けだよ！！！！！！！！！！！！！！！！！[Enter]'","    STDIN.gets","    p 'ざっこｗお前のAWSのファイル全部消したるわｗｗｗ'","    delete","    exit","end","","def delete","    sleep(2)","    p 'ec2-user:~/environment $ sudo rm -rf /* '","    sleep(0.7)","    p 'password : **********'","    sleep(1.2)","    p 'file deleting ...'","    sleep(10000)","end","","main"],"id":1}],[{"start":{"row":54,"column":15},"end":{"row":54,"column":16},"action":"remove","lines":[")"],"id":2}],[{"start":{"row":54,"column":14},"end":{"row":54,"column":15},"action":"remove","lines":["0"],"id":3}],[{"start":{"row":54,"column":13},"end":{"row":54,"column":14},"action":"remove","lines":["0"],"id":4}],[{"start":{"row":54,"column":12},"end":{"row":54,"column":13},"action":"remove","lines":["0"],"id":5}],[{"start":{"row":54,"column":11},"end":{"row":54,"column":12},"action":"remove","lines":["0"],"id":6}],[{"start":{"row":54,"column":10},"end":{"row":54,"column":11},"action":"remove","lines":["1"],"id":7}],[{"start":{"row":54,"column":9},"end":{"row":54,"column":10},"action":"remove","lines":["("],"id":8}],[{"start":{"row":54,"column":8},"end":{"row":54,"column":9},"action":"remove","lines":["p"],"id":9}],[{"start":{"row":54,"column":7},"end":{"row":54,"column":8},"action":"remove","lines":["e"],"id":10}],[{"start":{"row":54,"column":6},"end":{"row":54,"column":7},"action":"remove","lines":["e"],"id":11}],[{"start":{"row":54,"column":5},"end":{"row":54,"column":6},"action":"remove","lines":["l"],"id":12}],[{"start":{"row":54,"column":4},"end":{"row":54,"column":5},"action":"remove","lines":["s"],"id":13}],[{"start":{"row":54,"column":4},"end":{"row":54,"column":5},"action":"insert","lines":["e"],"id":14}],[{"start":{"row":54,"column":5},"end":{"row":54,"column":6},"action":"insert","lines":["x"],"id":15}],[{"start":{"row":54,"column":6},"end":{"row":54,"column":7},"action":"insert","lines":["e"],"id":16}],[{"start":{"row":54,"column":7},"end":{"row":54,"column":8},"action":"insert","lines":["c"],"id":17}],[{"start":{"row":54,"column":8},"end":{"row":54,"column":10},"action":"insert","lines":["()"],"id":18}],[{"start":{"row":54,"column":9},"end":{"row":54,"column":11},"action":"insert","lines":["\"\""],"id":19}],[{"start":{"row":54,"column":10},"end":{"row":54,"column":11},"action":"insert","lines":["y"],"id":20}],[{"start":{"row":54,"column":11},"end":{"row":54,"column":12},"action":"insert","lines":["e"],"id":21}],[{"start":{"row":54,"column":12},"end":{"row":54,"column":13},"action":"insert","lines":["s"],"id":22}],[{"start":{"row":54,"column":13},"end":{"row":54,"column":14},"action":"insert","lines":[" "],"id":23}],[{"start":{"row":54,"column":14},"end":{"row":54,"column":15},"action":"insert","lines":["."],"id":24}],[{"start":{"row":54,"column":15},"end":{"row":54,"column":16},"action":"insert","lines":["."],"id":25}],[{"start":{"row":54,"column":16},"end":{"row":54,"column":17},"action":"insert","lines":["."],"id":26}],[{"start":{"row":54,"column":17},"end":{"row":54,"column":18},"action":"insert","lines":["."],"id":27}],[{"start":{"row":54,"column":18},"end":{"row":54,"column":19},"action":"insert","lines":["."],"id":28}],[{"start":{"row":54,"column":19},"end":{"row":54,"column":20},"action":"insert","lines":["."],"id":29}],[{"start":{"row":54,"column":20},"end":{"row":54,"column":21},"action":"insert","lines":["."],"id":30}],[{"start":{"row":54,"column":21},"end":{"row":54,"column":22},"action":"insert","lines":["."],"id":31}],[{"start":{"row":54,"column":22},"end":{"row":54,"column":23},"action":"insert","lines":["."],"id":32}],[{"start":{"row":54,"column":23},"end":{"row":54,"column":24},"action":"insert","lines":["."],"id":33}],[{"start":{"row":54,"column":24},"end":{"row":54,"column":25},"action":"insert","lines":["."],"id":34}],[{"start":{"row":54,"column":25},"end":{"row":54,"column":26},"action":"insert","lines":["."],"id":35}],[{"start":{"row":54,"column":26},"end":{"row":54,"column":27},"action":"insert","lines":["."],"id":36}],[{"start":{"row":54,"column":27},"end":{"row":54,"column":28},"action":"insert","lines":["."],"id":37}],[{"start":{"row":54,"column":28},"end":{"row":54,"column":29},"action":"insert","lines":["."],"id":38}],[{"start":{"row":54,"column":29},"end":{"row":54,"column":30},"action":"insert","lines":["."],"id":39}],[{"start":{"row":54,"column":30},"end":{"row":54,"column":31},"action":"insert","lines":["."],"id":40}],[{"start":{"row":54,"column":31},"end":{"row":54,"column":32},"action":"insert","lines":["."],"id":41}],[{"start":{"row":54,"column":32},"end":{"row":54,"column":33},"action":"insert","lines":["."],"id":42}],[{"start":{"row":54,"column":33},"end":{"row":54,"column":34},"action":"insert","lines":["."],"id":43}],[{"start":{"row":54,"column":34},"end":{"row":54,"column":35},"action":"insert","lines":["."],"id":44}],[{"start":{"row":54,"column":35},"end":{"row":54,"column":36},"action":"insert","lines":["."],"id":45}],[{"start":{"row":54,"column":36},"end":{"row":54,"column":37},"action":"insert","lines":["."],"id":46}],[{"start":{"row":54,"column":37},"end":{"row":54,"column":38},"action":"insert","lines":["."],"id":47}],[{"start":{"row":54,"column":38},"end":{"row":54,"column":39},"action":"insert","lines":["."],"id":48}],[{"start":{"row":54,"column":39},"end":{"row":54,"column":40},"action":"insert","lines":["."],"id":49}],[{"start":{"row":54,"column":40},"end":{"row":54,"column":41},"action":"insert","lines":["."],"id":50}],[{"start":{"row":54,"column":41},"end":{"row":54,"column":42},"action":"insert","lines":["."],"id":51}],[{"start":{"row":54,"column":42},"end":{"row":54,"column":43},"action":"insert","lines":["."],"id":52}],[{"start":{"row":54,"column":43},"end":{"row":54,"column":44},"action":"insert","lines":["."],"id":53}],[{"start":{"row":54,"column":44},"end":{"row":54,"column":45},"action":"insert","lines":["."],"id":54}],[{"start":{"row":54,"column":45},"end":{"row":54,"column":46},"action":"insert","lines":["."],"id":55}],[{"start":{"row":54,"column":46},"end":{"row":54,"column":47},"action":"insert","lines":["."],"id":56}],[{"start":{"row":54,"column":47},"end":{"row":54,"column":48},"action":"insert","lines":["."],"id":57}],[{"start":{"row":54,"column":48},"end":{"row":54,"column":49},"action":"insert","lines":["."],"id":58}],[{"start":{"row":54,"column":49},"end":{"row":54,"column":50},"action":"insert","lines":["."],"id":59}],[{"start":{"row":54,"column":50},"end":{"row":54,"column":51},"action":"insert","lines":["."],"id":60}],[{"start":{"row":54,"column":51},"end":{"row":54,"column":52},"action":"insert","lines":["."],"id":61}],[{"start":{"row":54,"column":52},"end":{"row":54,"column":53},"action":"insert","lines":["."],"id":62}],[{"start":{"row":54,"column":53},"end":{"row":54,"column":54},"action":"insert","lines":["."],"id":63}],[{"start":{"row":54,"column":54},"end":{"row":54,"column":55},"action":"insert","lines":["."],"id":64}],[{"start":{"row":54,"column":55},"end":{"row":54,"column":56},"action":"insert","lines":["."],"id":65}],[{"start":{"row":54,"column":56},"end":{"row":54,"column":57},"action":"insert","lines":["."],"id":66}],[{"start":{"row":54,"column":57},"end":{"row":54,"column":58},"action":"insert","lines":["."],"id":67}],[{"start":{"row":54,"column":58},"end":{"row":54,"column":59},"action":"insert","lines":["."],"id":68}],[{"start":{"row":54,"column":59},"end":{"row":54,"column":60},"action":"insert","lines":["."],"id":69}],[{"start":{"row":54,"column":60},"end":{"row":54,"column":61},"action":"insert","lines":["."],"id":70}],[{"start":{"row":54,"column":61},"end":{"row":54,"column":62},"action":"insert","lines":["."],"id":71}],[{"start":{"row":54,"column":62},"end":{"row":54,"column":63},"action":"insert","lines":["."],"id":72}],[{"start":{"row":54,"column":63},"end":{"row":54,"column":64},"action":"insert","lines":["."],"id":73}],[{"start":{"row":54,"column":64},"end":{"row":54,"column":65},"action":"insert","lines":["."],"id":74}],[{"start":{"row":54,"column":65},"end":{"row":54,"column":66},"action":"insert","lines":["."],"id":75}],[{"start":{"row":54,"column":66},"end":{"row":54,"column":67},"action":"insert","lines":["."],"id":76}],[{"start":{"row":54,"column":67},"end":{"row":54,"column":68},"action":"insert","lines":["."],"id":77}],[{"start":{"row":54,"column":68},"end":{"row":54,"column":69},"action":"insert","lines":["."],"id":78}],[{"start":{"row":54,"column":69},"end":{"row":54,"column":70},"action":"insert","lines":["."],"id":79}],[{"start":{"row":54,"column":70},"end":{"row":54,"column":71},"action":"insert","lines":["."],"id":80}],[{"start":{"row":54,"column":71},"end":{"row":54,"column":72},"action":"insert","lines":["."],"id":81}],[{"start":{"row":54,"column":72},"end":{"row":54,"column":73},"action":"insert","lines":["."],"id":82}],[{"start":{"row":54,"column":73},"end":{"row":54,"column":74},"action":"insert","lines":["."],"id":83}],[{"start":{"row":54,"column":74},"end":{"row":54,"column":75},"action":"insert","lines":["."],"id":84}],[{"start":{"row":54,"column":75},"end":{"row":54,"column":76},"action":"insert","lines":["."],"id":85}],[{"start":{"row":54,"column":76},"end":{"row":54,"column":77},"action":"insert","lines":["."],"id":86}],[{"start":{"row":54,"column":77},"end":{"row":54,"column":78},"action":"insert","lines":["."],"id":87}],[{"start":{"row":54,"column":77},"end":{"row":54,"column":78},"action":"remove","lines":["."],"id":88}],[{"start":{"row":54,"column":76},"end":{"row":54,"column":77},"action":"remove","lines":["."],"id":89}],[{"start":{"row":54,"column":75},"end":{"row":54,"column":76},"action":"remove","lines":["."],"id":90}],[{"start":{"row":54,"column":74},"end":{"row":54,"column":75},"action":"remove","lines":["."],"id":91}],[{"start":{"row":54,"column":14},"end":{"row":54,"column":15},"action":"insert","lines":["d"],"id":92}],[{"start":{"row":54,"column":15},"end":{"row":54,"column":16},"action":"insert","lines":["e"],"id":93}],[{"start":{"row":54,"column":16},"end":{"row":54,"column":17},"action":"insert","lines":["l"],"id":94}],[{"start":{"row":54,"column":17},"end":{"row":54,"column":18},"action":"insert","lines":["e"],"id":95}],[{"start":{"row":54,"column":18},"end":{"row":54,"column":19},"action":"insert","lines":["t"],"id":96}],[{"start":{"row":54,"column":19},"end":{"row":54,"column":20},"action":"insert","lines":["e"],"id":97}],[{"start":{"row":54,"column":20},"end":{"row":54,"column":21},"action":"insert","lines":["i"],"id":98}],[{"start":{"row":54,"column":21},"end":{"row":54,"column":22},"action":"insert","lines":["n"],"id":99}],[{"start":{"row":54,"column":22},"end":{"row":54,"column":23},"action":"insert","lines":["g"],"id":100}],[{"start":{"row":54,"column":23},"end":{"row":54,"column":24},"action":"insert","lines":[" "],"id":101}]]},"ace":{"folds":[],"scrolltop":299,"scrollleft":0,"selection":{"start":{"row":31,"column":3},"end":{"row":31,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":20,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1516796503912,"hash":"f52df173c7abadfb6603bf46530d6e66689b85dd"}