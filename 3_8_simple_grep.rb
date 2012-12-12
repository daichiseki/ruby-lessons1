#encoding:utf-8
pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = open(filename)
while text=file.gets #textにfileが一行ずつ代入.代入するものがあったらtrue
	if pattern =~text #正規表現パターンがtextに一致した時true
		print text
	end
end
file.close
