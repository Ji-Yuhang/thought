require 'sqlite3'
require 'json'
task :copy => :environment do
  puts "begin copy"
  total = 31809
  index = 0
  db = SQLite3::Database.new "/Users/jyd/vimrc/shanbay.db"
  db.execute( "select * from words" ) do |row|
    # ap row
    w = row[0]
    str = row[1]
    json = JSON.parse str
    json.except!("content_id")
    json.except!("id")
    json.except!("conent_id")
    json.except!("object_id")

    shanbay = Shanbay.new json
    word = Word.new
    word.word = w
    word.shanbay = shanbay
    index += 1
    ap "#{index}    /    #{total}     #{w}"
    # debugger

    shanbay.save
    word.save
  end


end
