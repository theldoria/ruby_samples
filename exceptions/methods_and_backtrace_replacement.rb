# http://www.skorks.com/2013/04/ruby-why-u-no-have-nested-exceptions/

begin
  1/0
rescue
  puts ($!.methods - Object.instance_methods)
  puts "-" * 10
  puts $!.backtrace
  puts "-" * 10
  $!.set_backtrace(['hello', 'world', "show"])
  raise $!
end
