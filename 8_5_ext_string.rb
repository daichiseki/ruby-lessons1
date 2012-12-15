class String #標準のString
		def count_word #インスタンスメソッド
			ary = self.split(/\s+/) #selfを指定する必要がある
			return ary.size
		end
end

str = "Just Anothe Ruby Newbie"
p str.count_word
