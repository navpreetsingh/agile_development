class SaysController < ApplicationController
  def hello
  	@time = Time.now
  	@files = Dir.glob('*')  	
  	puts "Great"
  end

  def goodbye
  end
end
