require "pry"
module Serverspec::Type
  class Runmqsc < Base
    def status
      @runner.get_runmqsc_status(@name).stdout.strip
    end

    def counts
      @runner.get_runmqsc_counts(@name).stdout
    end
  end
end

