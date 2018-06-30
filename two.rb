puts "Detecting direct changes to methods"
puts

# old[:String][:==] != new[:String][:==]
old = {}
Object.constants.each do |constant_name|
  klass = Object.const_get(constant_name)
  if klass.respond_to?(:instance_methods)
    implementations = {}
    klass.instance_methods.each do |instance_method_name|
      implementation = klass.instance_method(instance_method_name)
      implementations[instance_method_name] = implementation
    end
    old[constant_name] = implementations
  end
end

puts "history == history"
puts "history" == "history" # true
puts

puts "history == current consensus"
puts "history" == "current consensus" # false
puts

puts "-----------"
require_relative "speakwrite"

puts
puts "history == history"
puts "history" == "history" # false
puts

puts "history == current consensus"
puts "history" == "current consensus" # true
puts

new = {}
Object.constants.each do |constant_name|
  klass = Object.const_get(constant_name)
  if klass.respond_to?(:instance_methods)
    implementations = {}
    klass.instance_methods.each do |instance_method_name|
      implementation = klass.instance_method(instance_method_name)
      implementations[instance_method_name] = implementation
    end
    new[constant_name] = implementations
  end
end

old.each do |constant_name, old_methods|
  old_methods.each do |method_name, old_implementation|
    new_implementation = new[constant_name][method_name]
    unless old_implementation == new_implementation
      puts "METHOD CHANGED: #{constant_name}##{method_name}"
    end
  end
end
