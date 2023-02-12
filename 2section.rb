class Foo
  def Foo.foo
    puts "foo"
  end
end

Foo.foo
#foo

class Foo
  def foo
    self
  end
end

class Bar < Foo
  def bar
    foo
  end
end

p Bar.new.bar.class

# -----------
class Foo
  def bar
    self.foo
  end
  def foo
    puts "foo"
  end
end
Foo.new.bar

# privateはだめ
# ----------------

puts [1,2,3].inject(0) {|sum, i| sum + i}

# ---------------------

# 以下、エラーが発生
#freezeメソッドを変更しようとしているため
char = {:a => "A"}.freeze
char[:a] = "B"
p char

#---------------------
# 3を表示したい
sum = Proc.new{|x,y| x + y}
puts sum.call(1,2)

#---------------------

