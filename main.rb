# frozen_string_literal: true

require 'csv'

Dir.glob(File.join('./lib', '*.rb')).each do |file|
  require file
end

Dir.glob(File.join(File.expand_path('./data', __dir__), '*.csv')).each do |file|
  puts file

  CSV.foreach(file) do |row|
    puts row.inspect
  end
end
