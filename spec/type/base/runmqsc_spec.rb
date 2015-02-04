require 'spec_helper'
require 'pry'

set :os, :family => 'base'

set_property("QM" => "QM_GZ02")

describe runmqsc('chl(CH_HOGE)') do
  let(:stdout) { "running\r\n" }
  its(:status) { should eq 'running' }
end

