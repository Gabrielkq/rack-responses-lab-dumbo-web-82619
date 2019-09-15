class Application
 
        def call(env)
               
            time = Time.new

          resp = Rack::Response.new
          resp.write "In military time the hour is #{time}"
          if time.hour <= 12
            resp.write "it is currently the morning"
            else
            resp.write "it is currently the afternoon"
          end
            resp.finish
        end
       
end