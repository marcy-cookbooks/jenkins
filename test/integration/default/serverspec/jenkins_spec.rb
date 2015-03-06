# -*- coding:utf-8 -*-

require 'serverspec'
require 'pathname'

set :backend, :exec

describe package('jenkins') do
  it { should be_installed }
end

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
end

describe file("/etc/sysconfig/jenkins") do
  it { should be_file }
  it { should contain 'JENKINS_HOME="/var/lib/jenkins"' }
  it { should contain 'JENKINS_JAVA_CMD=""' }
  it { should contain 'JENKINS_USER="jenkins"' }
  it { should contain 'JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true"' }
  it { should contain 'JENKINS_PORT="8080"' }
  it { should contain 'JENKINS_LISTEN_ADDRESS="0.0.0.0"' }
  it { should contain 'JENKINS_AJP_PORT="8009"' }
  it { should contain 'JENKINS_AJP_LISTEN_ADDRESS="127.0.0.1"' }
  it { should contain 'JENKINS_DEBUG_LEVEL="5"' }
  it { should contain 'JENKINS_ENABLE_ACCESS_LOG="no"' }
  it { should contain 'JENKINS_HANDLER_MAX="100"' }
  it { should contain 'JENKINS_HANDLER_IDLE="20"' }
  it { should contain 'JENKINS_ARGS="-prefix=/jenkins"' }
end
