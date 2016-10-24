require 'sqlite3'
require 'json'
task :copy_collins => :environment do
  puts "begin copy collins"
  total = 73792
  index = 0
  db = SQLite3::Database.new "#{ENV['HOME']}/vimrc/collins.db"
  db.execute( "select * from zhmultiwords" ) do |row|
     #ap row
    word_id = row[0]
    word = row[1]
    frequency = row[2]
    collinstype = row[3]
    num = row[4]
    st = row[5]
    cn = row[6]
    sentence = row[7]
    grammer = row[8]
    explain = row[9]
    usagenote = row[10]
    example = row[11]
    if true
      collin = Collin.new
      ww = Word.where(word: word)
      oneWord = ww.first
      if ww.count == 0
        w = Word.new 
        w.word = word
        collin.word = w
        oneWord = w
      else
        collin.word = oneWord
      end
      collin.content= word
      collin.frequency = frequency
      collin.collinstype = collinstype
      collin.num = num
      collin.st = st
      collin.cn = cn
      collin.sentence = sentence
      collin.grammer = grammer
      collin.explain = explain
      collin.usagenote = usagenote
      exampleHash = {}
      doc = Nokogiri::XML(example)
      doc.xpath('//pair').each do |pair|
        en = pair.xpath('//en')[0].text
        zh = pair.xpath('//zh')[0].text
        exampleHash[en] = zh
      end
      collin.example = exampleHash

      oneWord.collins << collin
    end
    index += 1
    ap "#{index}    /    #{total}     #{w}"
    # debugger

  end


end
