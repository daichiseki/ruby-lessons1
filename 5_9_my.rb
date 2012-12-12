#encoding:utf-8
ARGV.each do |arg_i|
	case arg_i
	when "man" ,"woman","he","she"
		print arg_i,"has child \n"
	when "x"
		print arg_i,"has no child \n"
	else
		print arg_i,"cannot be used \n"
	end
end

