require "pry"
module Serverspec::Type
  class Runmqsc < Base
    def status
      @runner.get_runmqsc_status(@name).stdout.strip
    end
  end
end

