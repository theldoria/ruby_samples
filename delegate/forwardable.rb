require 'forwardable'

class A
  def func1
    puts "#{self.class}#func1"
  end

  def func2
    puts "#{self.class}#func2"
  end
end

class B
  # Extending provides class methods:
  extend Forwardable
  # Use of def_delegators:
  # Normally used on instance variable, but also
  # works on access functions
  def_delegators :other, :func1, :func2

  def other
    print "#{self.class}#other: "
    @other ||= A.new
  end
end

b = B.new
b.func1
b.func2

