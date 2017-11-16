class Application
  def call(env)
    resp = Rack::Response.new

    time= Time.new
# puts "#{Time.now.hour}"
    if  time.now.hour >= 0 && time.now.hour < 12
      resp.write "Good Morning!"
    elsif time.now.hour >= 12 && time.now.hour < 24
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
