```ruby
class MyClass
  attr_reader :value # Use attr_reader for controlled access

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

# Attempting to modify @value directly will fail
# my_object.instance_variable_set(:@value, 20) # This should be avoided.

# If modification is needed, create a method to handle it
class MyClass
  attr_reader :value
  
  def initialize(value)
    @value = value
  end

  def update_value(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
my_object.update_value(20)
puts my_object.value #=> 20
```