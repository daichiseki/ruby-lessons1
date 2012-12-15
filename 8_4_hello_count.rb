#coding:utf-8

class HelloCount
	@@count = 0
	class << HelloCount
		def count #HelloCount.countで回数の表示.クラス・メソッド
			return @@count #@@countのクラス変数を返す
		end
	end

	def initialize(myname="Ruby") 	#インスタンス生成時　HelloCount.newで呼び出しインスタンスメソッド
		@name = myname	 #インスタンス変数に引数を渡す
	end

	def hello #hello　インスタンスメソッド
		@@count += 1 #クラス変数を１進める
		print "Hello, world. I am",@name ,".\n"
	end
end

bob 	=	HelloCount.new("BOb")
alice 	=	HelloCount.new("Alice")

p HelloCount.count
bob.hello
alice.hello
p HelloCount.count