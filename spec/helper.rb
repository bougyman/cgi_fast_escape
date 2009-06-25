# Copyright (c) 2008-2009 The Rubyists, LLC (effortless systems) <rubyists@rubyists.com>
# Distributed under the terms of the MIT license.
# See the LICENSE file which accompanies this software for the full text
#
%w{bacon rack}.each { |lib|
  begin
    require lib
  rescue LoadError
    require "rubygems"
    require lib
  end
}

begin
  if File.file?(local_path = File.expand_path("../../lib/cgi_fast_escape.rb", __FILE__))
    require File.join(File.dirname(local_path),File.basename(local_path, ".rb"))
  else
    require "cgi_fast_escape"
  end
rescue LoadError
  require "rubygems"
  require "cgi_fast_escape"
end

Bacon.summary_on_exit
