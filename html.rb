#encoding:utf-8
require "open-uri"
open("http://kyoumu.office.uec.ac.jp/kyuukou/kyuukou.html") do |io|
3.times do
	file = io.gets


	file.encode!("utf-8","Shift_JIS")
	print file
end
end
