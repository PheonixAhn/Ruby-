$sum_coin = 0
$select   = 0

$cola =5

def insert_coin(user_coin)
        if(user_coin == 10  ||
           user_coin == 100 ||
           user_coin == 500 ||
           user_coin == 1000
          )
                $sum_coin = ($sum_coin + user_coin)

                return $sum_coin
       else
            return "利用できないコインです。\n 投入金額："+$sum_coin.to_s+"釣り銭："+user_coin.to_s
       end
end

def menu_select
    cola_check = "X"
    if($sum_coin >= 120 )
            cola_check =  "購入可能"
         else
            cola_check =  "購入不可能"
         end

    print "自動販売機の在庫状態、管理するときは（M)\n"
    print "購入するときは製品の数字を入力してください。\n"
    print "-------------------在庫状態　----------------\n"
    puts "1.コーラ：120円"+$cola.to_s+"本("+cola_check+")"


    print "select : "

    $select_mode = gets.chomp
    if($select_mode == 'M')
        print "追加することを選んでください。"
    else

    end
end

while($select != 'y')
    print "製品を買う時は　(y)を入力してください。"
    print "Insert coin plz(10,50,100,500,1000円) : "

    user_input = gets.chomp
    $select = user_input
    user_input = user_input.to_i

    puts insert_coin(user_input).to_s+"円"

end

menu_select()

