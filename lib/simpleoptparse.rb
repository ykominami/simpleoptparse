require "simpleoptparse/version"
require "optparse"

module Simpleoptparse
  class Simpleoptparse
    def self.xinit()
      puts "xinit"
    end
    
    def self.create( argv , opts , banner , version , release , &block )
      parser = OptionParser.new
      parser.banner = banner
      parser.version = version
      parser.release = release
      if block_given?
        block.call(parser)
      end
      
      begin
        parser.parse!(argv)
      rescue(OptionParser::InvalidOption) => ex
        puts ex
        puts parser.to_s
        exit 20
      end
    end
  end
end
