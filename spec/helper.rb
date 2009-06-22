require "pathname"
%w{bacon rack}.each { |lib|
  begin
    require lib
  rescue LoadError
    require "rubygems"
    require lib
  end
}

begin
  if (local_path = Pathname.new(__FILE__).dirname.join("..", "lib", "cgi_fast_escape.rb")).file?
    require local_path
  else
    require "cgi_fast_escape"
  end
rescue LoadError
  require "rubygems"
  require "cgi_fast_escape"
end

Bacon.summary_on_exit
