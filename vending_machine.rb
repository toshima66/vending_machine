class VendingMachine
  DRINK_LIST = {
    オレンジジュース: 120,
    ビール: 230
  }

  def execute
    # 処理開始
    puts '自動販売機です'

    # 商品一覧表示
    list()

    # 商品を選択
    select()

    # 金額を入力
    put_coins()

    # 終了処理
    puts 'ありがとうございました'
  end

  def list
    # 一覧表示
    puts "#{DRINK_LIST}"
  end

  def select
    puts '何にしますか？'

    #入力待ち
    str = gets
    puts "#{str}"

    #入力値から商品選択
    #選択できたら商品を出力

    #
  end

end

VendingMachine.new.start()
