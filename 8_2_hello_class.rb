#coding:utf-8
class HelloWorld
	version = 1.0

	def initialize(temp_instance_name="Ruby")
		@name = temp_instance_name
	end

	def name
		return @name
	end

	def name=(value)
		@name =	value
	end

	def hello
		print "Hello,world. I am ",@name,".\n"
	end
end

bob_instance 	=	HelloWorld.new("Bob")
alice_instance	=	HelloWorld.new("alice")
ruby_instance	=	HelloWorld.new()

p bob_instance.name=("an")
bob_instance.hello
alice_instance.hello
ruby_instance.hello