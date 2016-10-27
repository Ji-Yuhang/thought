#$thesaurus = Marshal.load File.read "/Users/jiyuhang/test/ruby/nce/marshal_dump_verb.dump"
thesaurus_path = Rails.root.join('config', 'initializers' ,'marshal_dump_verb.dump')
$thesaurus = Marshal.load File.read thesaurus_path
$frequency = Hash.new
$shanbay = Hash.new
Word.each do |w|
  $frequency[w.word] = w.frequency
end
#Word.where(:frequency.gt => 1).each do |w|
  #$shanbay[w.word] = w.shanbay.definition.gsub( /\n/ , "<br/>")
#end
collin1_path = Rails.root.join('config', 'initializers' ,'queue_collins_1.txt')
$collin1 = File.read(collin1_path).each_line.map(&:strip)
