puts "Detecting available classes and methods"
puts

require "ostruct"
require "openssl"
require "json"
require "base64"
require "digest"

original_constants = Object.constants
original_methods = Object.methods

require "jwt"

updated_constants = Object.constants
updated_methods = Object.methods

diff_constants = updated_constants - original_constants
diff_methods = updated_methods - original_methods

puts "diff_constants: #{diff_constants}"
puts "diff_methods: #{diff_methods}"

diff_constants.each do |new_constant_name|
  klass = Object.const_get(new_constant_name)
  puts "#{new_constant_name} has constants: #{klass.constants}"
  puts "#{new_constant_name} has methods: #{klass.methods - original_methods}"
end
