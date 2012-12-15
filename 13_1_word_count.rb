#encoding:utf-8

count = Hash.new(0)
begin
	filename = ARGV[0]
	file = open(filename)

	while line = file.gets
	words = line.split
		words.each do |word|
			count[word] += 1
		end
	end

	count.sort{|a,b|
	b[1] <=> a[1]
	}.each do |key,value|
		if value == 1

			print "#{key} ,   "
		else
			print "#{key}: #{value}\n"
		end
	end

	file.close
rescue
	print "Please , put collect filename.\n"

end

