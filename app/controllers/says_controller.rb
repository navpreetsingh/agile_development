class SaysController < ApplicationController
  def hello
  	@time = Time.now
  	@files = Dir.glob('*')
  	debugger
  	puts "Great"
  end

  def goodbye
  end
end
