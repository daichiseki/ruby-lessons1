require "nkf"
require "iconv"
filename = "./kyuukou.txt.html"
p filename.encoding
filename.encoding("utf-8")
#filenamea = NKF.nkf(" -S -w -xm0",filename)
p filenamea.encoding
file = open(filenamea)
4.times do
	print file.gets
end