require File.dirname(__FILE__) + "/../hhttp.rb"
require File.dirname(__FILE__) + "/../query.rb"



puts Query.get_by_artist("name+url", "json", {"n" => "20", "pn" => "1"})
