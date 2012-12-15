#coding:utf-8

ltotal = 0 		#行数の合計
wtotal = 0		#単語数の合計
ctotal = 0		#文字数の合計
ex = nil

ARGV.each do |file|
	begin
		input = open(file)
		l = 0		#file内の行数
		w = 0		#file内の単語数
		c = 0		#file内の文字数
		while line = input.gets
			l += 1
			c += line.size
			line.sub!(/^\s/,"") 	#行頭の空白を削除する
			ary = line.split(/\s+/)	#空白文字を分解（分解したものは配列になる）
			w += ary.size
		end
		input.close
		printf("%8d %8d %8d %s\n",l,w,c,file)

		ltotal += l
		wtotal += w
		ctotal += c

		rescue => ex
		#print ex.message,"\n"
	end
end
		printf("%8d %8d %8d %s\n",ltotal,wtotal,ctotal,"total")
		if ex != nil
			print ex.message,"\n"
		end

