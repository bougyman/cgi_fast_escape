# Copyright (c) 2008-2009 The Rubyists, LLC (effortless systems) <rubyists@rubyists.com>
# Distributed under the terms of the MIT license.
# See the LICENSE file which accompanies this software for the full text
#
require File.expand_path("../../helper", __FILE__)
describe "CgiFastEscape" do
  describe "module embedding" do

    describe "escape methods" do
      it "defines fast_escape on CGI" do
        CGI.respond_to?(:fast_escape).should.be.true
      end

      it "aliases original escape on CGI to old_escape" do
        CGI.respond_to?(:old_escape).should.be.true
      end

      it "sets CGI.fast_escape?" do
        CGI.fast_escape?.should.be.true
      end
    end

    describe "unescape methods" do
      it "defines fast_unescape on CGI" do
        CGI.respond_to?(:fast_unescape).should.be.true
      end

      it "aliases original unescape on CGI to old_unescape" do
        CGI.respond_to?(:old_unescape).should.be.true
      end

      it "sets CGI.fast_unescape?" do
        CGI.fast_unescape?.should.be.true
      end
    end

  end

end

describe "CGI" do
  describe "#escape" do
    it "unescapes spaces in an encoded url" do
      CGI.unescape("foo%20bar").should == "foo bar"
      CGI.unescape("foo+bar").should == "foo bar"
    end
  end

  describe "#escape" do
    it "escapes spaces in an encoded url" do
      CGI.escape("foo bar").should == "foo+bar"
    end
  end
end

