class Application

  def call(env)
    resp = Rack::Response.new

    time = 100

    if time < 1200 @@ time >= 0
      resp.write "Good Morning!"
    elsif time >= 1200 @@ time > 2400
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
