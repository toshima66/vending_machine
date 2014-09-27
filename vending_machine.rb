class VendingMachine
  DRINK_LIST = {
    オレンジジュース: 120,
    ビール: 230
  }

  def start
    # 一覧表示
    puts '自動販売機です。'
    puts "#{DRINK_LIST}"
    puts '何にしますか？'

    #入力待ち
    str = gets
    puts "#{str}"
  end

end

VendingMachine.new.start()
