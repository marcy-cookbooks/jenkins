# -*- coding:utf-8 -*-

require 'serverspec'
require 'pathname'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.os = backend(Serverspec::Commands::Base).check_os
    c.path = '/sbin:/usr/bin'
  end
end

describe package('java') do
  it { should be_installed }
end

describe package('jenkins') do
  it { should be_installed }
end

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
end
