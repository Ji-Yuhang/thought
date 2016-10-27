
task :set_frequency => :environment do
  puts "begin set frequency"
  total = 73792
  index = 0

  Word.each do |word|
    next if word.frequency.present? && word.frequency == 0 
    word.frequency = word.word_frequency
    word.save
    print "."
  end
  puts "Word frequency have set finished"
  


end
