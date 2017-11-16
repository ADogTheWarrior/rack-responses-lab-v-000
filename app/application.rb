class Application

  def call(env)
    resp = Rack::Response.new

    time= Time.new
    if  time >= 0 && time < 1200
      resp.write "Good Morning!"
    elsif time >= 1200 && time < 2400
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
