require "rubygems"
require "csv"

class DataSeries
  class << self
    def parse(path)
      elapsed = []
      total = []
      success = []
      failed = []
      CSV.foreach(path, :headers => true, :col_sep => ";") do |row|
        elapsed << row["ElapsedTime(C)"]
        total << row["TotalCallCreated"].to_i
        success << row["SuccessfulCall(C)"].to_i
        failed << row["FailedCall(C)"].to_i
      end
      [elapsed, total, success, failed]
    end
  end
end

path = File.expand_path(File.join(File.expand_path(File.dirname(__FILE__)), '../', 'results', 'simple_asterisk.csv'))

while true do
  sleep(5)
  series = DataSeries.parse(path) if File.exists?(path)
  p series
end
