def shoubu 
  #じゃんけんの処理
  puts "じゃんけん.."
  puts "0(グー)1(チョキ)2(パー)3(やめる)"
  gan_type = gets.to_i 
  puts "ホイ"
  puts "-------------------------"
 
  def gann()
    @aite = rand(3) 
    case @aite
    when 0
      puts "相手はグーを出しました"
    when 1
      puts "相手はチョキを出しました"
    when 2
      puts "相手はパーを出しました"
    end
  end 
 
  if gan_type == 0
    puts "あなたはグーを出しました"
    gann()
    if @aite == 0
      puts "あいこです"
      @you = "drow"
    elsif @aite == 1
      puts "あなたの勝ちです"
      @you = "win"
    else @aite == 2
      puts "あなたの負けです"
      @you = "lose"
    end  
  
  elsif gan_type == 1
    puts "あなたはチョキを出しました"
    gann()
    if @aite == 0
      puts "あなたの負けです"
      @you = "lose"
    elsif @aite == 1
      puts "あいこです"
      @you = "drow"
    else @aite == 2
      puts "あなたの勝ちです"
      @you = "win"
    end  
  
  elsif gan_type == 2
    puts "あなたはパーを出しました"
    gann()
    if @aite == 0
      puts "あなたの勝ちです"
      @you = "win"
    elsif @aite == 1
      puts "あなたの負けです"
      @you = "lose"
    else @aite == 2
      puts "あいこです"
      @you = "drow"
    end
  else
    puts "勝負をやめる"
    return false
  end
  puts "-------------------------------"
  
  #あっち向いての処理
  if @you == "win"
    puts "あなたが指を指します"
    @shohi = "勝ち"
  elsif @you == "lose"
    puts "相手が指を指します"
    @shohi = "負け"
  else @you == "drow"
    return true
  end  

  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  acc_type = gets.to_i
  puts "ホイ"

  def acchi
    @aite_sec = rand(4)
    case @aite_sec
    when 0
      puts "相手:上"
    when 1
      puts "相手:下"
    when 2
      puts "相手:左"
    when 3
      puts "相手:右"
    end
  end
 
  if acc_type == 0
    puts "あなた:上"
    acchi
    if @aite_sec == 0
      puts "あなたの#{@shohi}です"
      return false
    else 
      puts "引き分け"
      return true
    end  
  
  elsif acc_type == 1
    puts "あなた:下"
    acchi
    if @aite_sec == 1
      puts "あなたの#{@shohi}です"
      return false
    else 
      puts "引き分け"
      return true
    end  
  
  elsif acc_type == 2
    puts "あなた:左"
    acchi
    if @aite_sec == 2
      puts "あなたの#{@shohi}です"
      return false
    else 
      puts "引き分け"
      return true
    end  
  
  else acc_type == 3
    puts "あなた:右"
    acchi
    if @aite_sec == 3
      puts "あなたの#{@shohi}です"
      return false
    else 
      puts "引き分け"
      return true
    end  
  end
end

next_game = true

while next_game 
  next_game = shoubu
end