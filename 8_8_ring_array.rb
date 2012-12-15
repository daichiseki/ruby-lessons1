#coding:utf-8

class RingArray < Array
	def [](i)
		idx = i % size
		super (idx)
	end
end

eto = RingArray["ね","usi","tora"]
print eto[6]