#coding:utf-8
class HelloWorld
	Version = 1.0
	attr_accessor :name

	def initialize(temp_instance_name="Ruby")
		@name = temp_instance_name
	end

	def greet
		p @name
		p self.name
		self.name=("rruby")	#name= メソッドでgreetメソッドを呼んだ時のレシーバのnameを変更する。
		print "Hi ",self.name,".\n" #self.nameはgreetメソッドを呼んだ時のレシーバ（最初ならbob_instance）を参照する。
		p @name
	end

	class << HelloWorld
		def hello(name)
			print(name,"said Hello!\n")
		end
	end

end

bob_instance 	=	HelloWorld.new("Bob")
alice_instance	=	HelloWorld.new("alice")
ruby_instance	=	HelloWorld.new()

bob_instance.greet
alice_instance.greet
ruby_instance.greet
p HelloWorld::Version #クラス内の定数を表示するときはダブルセミコロン
HelloWorld.hello("daichi")