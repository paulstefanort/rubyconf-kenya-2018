puts "Detecting indirect changes to methods"
puts

# old[:Hash] = new[:Hash]
old = {}
Object.constants.each do |constant_name|
  klass = Object.const_get(constant_name)
  if klass.respond_to?(:ancestors)
    old[constant_name] = klass.ancestors
  end
end

regular_caesar = {came: true, saw: true, conquered: true}
weak_caesar = {came: true, saw: true, conquered: false}
agreeable_caesar = {came: true, saw: true, concurred: true}

puts "regular == regular"
puts regular_caesar == regular_caesar # true
puts

puts "regular == weak"
puts regular_caesar == weak_caesar # false
puts

puts "regular == agreeable"
puts regular_caesar == agreeable_caesar # false
puts

puts
puts "-----------"
require_relative "horse_shoes_and_hand_grenades"
class Hash
  prepend CloseEnough
end
puts

puts "regular == regular"
puts regular_caesar == regular_caesar # true
puts

puts "regular == weak"
puts regular_caesar == weak_caesar # true
puts

puts "regular == agreeable"
puts regular_caesar == agreeable_caesar # false
puts

new = {}
Object.constants.each do |constant_name|
  klass = Object.const_get(constant_name)
  if klass.respond_to?(:ancestors)
    new[constant_name] = klass.ancestors
  end
end

old.each do |constant_name, old_ancestors|
  new_ancestors = new[constant_name]
  unless new_ancestors == old_ancestors
    puts "ANCESTRY CHANGED: #{constant_name} has ancestors #{new_ancestors - old_ancestors}"
  end
end
