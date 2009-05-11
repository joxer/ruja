#http helper

require 'net/http'

class HHttp 
  
  def self.get(url)
    begin 
      url = URI.parse(url)
      
      req = Net::HTTP::Get.new(url.path + "?#{url.query}")
      
      
      res = Net::HTTP.start(url.host, url.port) do |http| 
        http.request(req) 
      end
      p res
    return res.body

    rescue ArgumentError => e
      
      puts "error occured: #{e}"

    end

  end

end
