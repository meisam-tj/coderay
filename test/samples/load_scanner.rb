require 'coderay'

begin
	CodeRay::Scanners::Ruby
rescue
	puts 'CodeRay::Encoders::Ruby is not defined; you must load it first.'
end

ruby_scanner = CodeRay::Scanners[:ruby]
print 'Now it is loaded: '
p ruby_scanner
puts 'See?'

c_scanner = CodeRay.require_plugin 'CodeRay::Scanners/c'
print 'Require is also possible: '
p c_scanner
puts 'See?'

puts 'Now load some mapped scanners: cpp and plain.'
CodeRay.require_plugin 'CodeRay::Scanners/cpp'
CodeRay.require_plugin 'CodeRay::Scanners/plain'

puts 'Require all Scanners:'
CodeRay::Scanners.load_all
p CodeRay::Scanners.plugin_hash.sort_by { |k,v| k.to_s }
