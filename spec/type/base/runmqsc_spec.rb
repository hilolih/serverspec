require 'spec_helper'
require 'pry'

set :os, :family => 'base'

set_property("QM" => "QM_GZ02")

describe runmqsc('chl(CH_HOGE)') do
  let(:stdout) { "AMQ\nSTATUS(RUNNING)\r\n" }
  its(:status) { should eq 'running' }
end

describe runmqsc('chl(CH_aaa)') do
  let(:stdout) { "AMQ\nSTATUS(RUNNING)\r\nAMQ\nSTATUS(RUNNING)\r\n" }
  its(:counts) { should eq 2 }
end

