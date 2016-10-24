$thesaurus = Marshal.load File.read "/Users/jiyuhang/test/ruby/nce/marshal_dump_verb.dump"
$frequency = Hash.new
$shanbay = Hash.new
Word.each do |w|
  $frequency[w.word] = w.frequency
end
Word.where(:frequency.gt => 1).each do |w|
  #$frequency[w.word] = w.frequency
  $shanbay[w.word] = w.shanbay.definition.gsub( /\n/ , "<br/>")
end
