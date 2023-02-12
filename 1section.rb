class Foo
  def bar(obj=nil)
    foo
  end
  private
  def foo
    puts "foo"
  end
end

Foo.new.bar(Foo.new)

class Foo
  def foo
    self.bar
  end
  def bar
    puts "bar"
  end
end

Foo.new.foo
---------
class Hello
  def greet
    "Hello"
  end
end

class World < Hello
  def greet
    super + "World"
  end
end

puts World.new.greet
#Hello Worldを表示させたい
--------
# a, *b = *[1,2,3]
# p a
# p b
--------

module M
 CONST = "HELLO"
end
puts ::M::CONST

# HELLOと出力したい

class Error1 < StandardError; end
class Error2 < Error1; end
begin
  raise Error2
  rescue Error1 => ex
  puts ex.class
  end

class Foo
  def foo
    puts "foo"
  end
end

Foo.new.foo


# fooにならないもの
# class Foo
#   def bar(obj=nil)
#     Foo.foo # これ
#   end
#   protected
#   def foo
#     puts "foo"
#   end
# end
# Foo.new.bar(Foo.new)