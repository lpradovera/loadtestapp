require "rubygems"
require "sinatra"
require "haml"

path = File.expand_path(File.join(File.expand_path(File.dirname(__FILE__)), '../', 'sipp'))
csv_path = File.expand_path(File.join(File.expand_path(File.dirname(__FILE__)), '../', 'results', 'simple_asterisk.csv'))

File.unlink(csv_path) if File.exists?(csv_path)
exec("cd #{path}; sudo sipp -i 127.0.0.1 -sf load-test-1-simple.xml -l 4 -m 20 -r 2 -s 1 -p 8832 127.0.0.1 -trace_stat -stf ../results/simple_asterisk.csv -fd 10")
