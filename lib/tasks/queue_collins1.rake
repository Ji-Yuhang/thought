
task :queue_collins_1 => :environment do

  list = []
  file0 = "/media/jiyuhang/data/JianGuoYun/nce/activerecord/collins1.txt"
  file1 = "/media/jiyuhang/data/JianGuoYun/nce/mdx/GetDict_veryhuo.com/macmillan/macmillan-1.txt"
  file2 = "/media/jiyuhang/data/JianGuoYun/nce/mdx/GetDict_veryhuo.com/macmillan/macmillan-1.txt"
  file3 = "/media/jiyuhang/data/JianGuoYun/nce/mdx/GetDict_veryhuo.com/macmillan/macmillan-1.txt"

  words = File.read(file0).each_line.map(&:strip)
  words.delete("")
  puts words.size

  def words_of_sentence sentence
    temp = []
    ws = sentence.split(/\W+/)
    ws.each do |w|
      if $frequency[w].present?
        origin_word = w
      else
        origin_word = Word.stem_word w 
      end
      temp << origin_word if $frequency[origin_word].present?
    end
    temp
  end
  def relate_words word
    temp = []
    if $thesaurus[word].present?
      $thesaurus[word].each do |noun, list_list|
        list_list.each do |list|
          list.each do |th|
            temp << th
          end
        end
      end
    end

    begin
      w = Word.find_by word: word
      sb = w.shanbay
      temp += words_of_sentence sb.en_definition
    rescue
    end

    cs = Collin.where content: word
    if cs.present?
      cs.each do |c|
        if c.sentence.present?
          temp += words_of_sentence c.sentence
        end
      end
    end
    temp
  end
  #
  ducp = words.clone
  queue = []
  result = []
  loop {
    if queue.empty?
      temp = ducp.pop
      break if temp.nil?
      queue.push temp
    end 
    word = queue.pop
    result.push word

    rerelate_ws = relate_words word
    rerelate_ws.each do |th|
      if words.include?(th) &&(!result.include? th)
        queue.push  th
        result.push th
      end
    end
  }
  result.uniq!
  puts result.size
  File.open Rails.root.join('config','initializers','queue_collins_1.txt'), 'w' do |io|
    result.each do |word|
      io.puts word
    end
  end
  


end
