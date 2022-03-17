def attimuite_hoi
  puts "じゃんけんほい"
  puts '自分の出す手を選んでください'
  puts 'グー[0],チョキ[1],パー[2]'

  put_my_hand = gets.chomp.to_i
  put_pc_hand = rand(3)

  if put_my_hand == 0
    my_hand = "グー"
  elsif put_my_hand == 1
    my_hand = "チョキ"
  elsif put_my_hand == 2
    my_hand = "パー"
  end

  if put_pc_hand == 0
    pc_hand = "グー"
  elsif put_pc_hand == 1
    pc_hand = "チョキ"
  elsif put_pc_hand == 2
    pc_hand = "パー"
  end


  puts "自分の手[#{my_hand}]"
  puts "相手の手[#{pc_hand}]"

  result = put_pc_hand - put_my_hand

  if result == 0
    @put_result = "DRAW"
  end

  if put_pc_hand == 0

    if put_my_hand == 1
      @put_result = "LOSE"
    elsif put_my_hand == 2
      @put_result = "WIN"
    end

  elsif put_pc_hand == 1

    if put_my_hand == 0
      @put_result = "WIN"
    elsif put_my_hand == 2
      @put_result = "LOSE"
    end

  elsif put_pc_hand == 2

    if put_my_hand == 0
      @put_result = "LOSE"
    elsif put_my_hand == 1
      @put_result = "WIN"
    end
  end

  puts "結果#{@put_result}"
  puts "------------------"

  if @put_result == "DRAW"
    puts 'あいこで〜〜'
    attimuite_hoi

  elsif @put_result == "WIN" || @put_result == "LOSE"
    puts "あっち向いて〜〜〜ほいっ！"
    puts '方向を選んでください'
    puts '↑上[0],→右[1],↓下[2],←左[3]'

    hoi_my_hand = gets.chomp.to_i
    hoi_pc_hand = rand(4)

    if hoi_my_hand == 0
      my_dir = "上"
    elsif hoi_my_hand == 1
      my_dir = "右"
    elsif hoi_my_hand == 2
      my_dir = "下"
    elsif hoi_my_hand == 3
      my_dir = "左"
    end

    if hoi_pc_hand == 0
      pc_dir = "上"
    elsif hoi_pc_hand == 1
      pc_dir = "右"
    elsif hoi_pc_hand == 2
      pc_dir = "下"
    elsif hoi_pc_hand == 3
      pc_dir = "左"
    end

    if @put_result == "WIN"
      puts "自分は[#{my_dir}]を指した"
      puts "相手は[#{pc_dir}]を向いた"
      puts "------------------------------"

      if my_dir == pc_dir
        puts "プレイヤー勝利"
        puts "GAME SET"
      else 
        attimuite_hoi
      end

    elsif @put_result == "LOSE"
      puts "相手は[#{pc_dir}]を指した"
      puts "自分は[#{my_dir}]を向いた"
      puts "------------------------------"
      if my_dir == pc_dir
        puts "プレイヤー敗北"
        puts "GAME SET"
      else 
        attimuite_hoi
      end
    end
  end
end

attimuite_hoi