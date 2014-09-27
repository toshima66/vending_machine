class VendingMachine
  DRINK_LIST = [
    { name: "オレンジジュース", price: 120 },
    { name: "ビール", price: 230 }
  ]

  def execute
    # 処理開始
    puts '自動販売機です'

    # 商品一覧表示
    list()

    # 商品を選択
    selected = select()

    # 金額を入力
    put_coins(selected)

    # 終了処理
    puts 'ありがとうございました'
  end

  def list
    # 一覧表示
    DRINK_LIST.each_with_index{|drink, index|
      puts "#{index}: #{drink[:name]} - #{drink[:price]}"
    }
  end

  def select
    puts '何にしますか？'

    #入力待ち
    str = gets
    puts "#{str}"

    #入力値から商品選択
    selected = DRINK_LIST[str.to_i]

    #アカン場合は再入力
    select() if selected.nil?

    #選択できたら商品を出力
    puts "#{selected[:name]}ですね"

    return selected
  end

  def put_coins(drink)
    puts "#{drink[:name]}は#{drink[:price]}になります"

  end
end

VendingMachine.new.execute()
