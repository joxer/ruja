
class Query
  
  URL = "http://api.jamendo.com/get2/"


  def self.get_by_artist(what, format, parameters = "")
    param = ""
    if parameters != ""
      param = "?"
      parameters.keys.each {|x| param += x + "=" + parameters[x] + "&"}  
    end
    parameters = param
    
    return HHttp.get(URL + what + "/artist/" + format  + "/" + parameters)

  end

end
