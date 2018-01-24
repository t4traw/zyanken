# 仕様

## 本要項
1. ユーザーネームを対話取得
2. 現在コイン（初期コイン）・BET金額を表示
3. 出す手を対話取得
4. 対戦相手の手を取得
5. あいこの場合は再度双方の手を取得
6. 勝利判定・コイン精算
7. 現在コインを出力・継続有無を対話取得
   継続の場合は 3. まで戻る
8. 終了または終了条件を満たした場合、メッセージを表示してループを抜ける

## 基本処理

定数定義
  GOAL
  BET

変数定義
  wallet
  username
  
関数定義
get_hand
  while
    対話式コンソールでプレイヤーの手を取得
  end
duel(string:message, string:player_hand)
  メッセージを出力し、勝負を開始する
  
  ランダムで対戦相手の手を取得
  
  プレイヤーの手(aug:2)と対戦相手の手を比較

  return mixed
end
  
  
while
  対話式コンソールで username 取得
end

初期コイン、ゲームの終了条件を告げる

while
  対話式コンソールで ゲーム開始の質問
  BET分のコインを引く　引いたことを告げ現在コインを表示
end

while
  duel関数で勝負をする

あいこだった場合は、あいこの合図でもう一度勝負する
  get_hand
  duel

決着がついていた場合は勝敗に応じて処理を
  勝利
    walletにランダムでコインを獲得
    獲得コイン・現在walletを表示
  敗北
    敗北の通知 現在のコインを表示

勝負を続けるか聞く
  続ける場合は処理を戻る
  
  終わる場合は
  現在コインを出力して、
  対話式コンソールで確認して終了する
end


#### 対話式コンソールメモ

```
while true
  puts 'Let the games begin... [y|n]:'
  
  case gets
  while /^[yY]/
    #
    # code here
    ##
  else
    puts 'Bye-bye!'
    return
  end
end
```