class Application

  def call(env)
    resp = Rack::Response.new

    time= Time.new

    if  time.hour >= 0 && time.hour < 12
      resp.write "Good Morning!"
    elsef time.hour >= 12 && time.hour < 24
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
