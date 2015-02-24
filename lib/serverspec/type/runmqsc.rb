require "pry"
module Serverspec::Type
  class Runmqsc < Base
    %w{conname status channel qmid put}.each do |meth| 
      define_method(meth){@runner.send("get_runmqsc_#{meth}", @name).stdout.strip}
    end

    def counts
      @runner.get_runmqsc_counts(@name).stdout
    end
  end
end

