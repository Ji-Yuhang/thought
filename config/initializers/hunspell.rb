#require "rubygems"
#gem "hunspell"
#require "Hunspell"
#require "awesome_print"
=begin
FFI::Hunspell.dict do |dict|
    ap dict.stem('dogs')
    ap dict.check?('dog')
    ap dict.check?('dogs')
    ap dict.suggest("arbitrage")
end
=end
$sp = Hunspell.new("/Users/jiyuhang/MyJianGuoYun/en_US.aff","/Users/jiyuhang/MyJianGuoYun/en_US.dic")
#ap $sp
#ap $sp.spellcheck "dirt"
#ap $sp.spellcheck "a"
#ap $sp.suggest "dirt"

$spell = FFI::Hunspell.dict("en_US")


