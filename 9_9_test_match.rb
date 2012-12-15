#encoding:utf-8

require "open-uri"

sp = Array.new(50) do
	[0,0,0,0,0,0,0]
end
i,j = 0
line_pre = 0 # 前回情報が読み込めた行

########

open("http://kyoumu.office.uec.ac.jp/kyuukou/kyuukou.html") do |io|
	while line_gets = io.gets
		line_gets.encode!("utf-8","Shift_JIS")
		if %r|<TD ALIGN=CENTER>(.+)</TD>| =~ line_gets
			if line_pre+1 != io.lineno #新しい行要素
				i += 1
				j =	 0
			else #keyの追加時、新しい列要素
				j += 1
			end
		sp[i][j] = $1
		line_pre = io.lineno
		end
	end
end

for n in 1..i
	for m in 0..j
		if %r|>(.+)<| =~ sp[n][m]
			sp[n][m] = $1
		end
		printf("%20s",sp[n][m])
	end
	print "\n"
end