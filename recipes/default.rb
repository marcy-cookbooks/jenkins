#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2014, Marcy
#
# MIT License
#

include_recipe 'java'

yum_repository "jenkins" do
  description "jenkins repo"
  baseurl "http://pkg.jenkins-ci.org/redhat/"
  gpgkey  "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
  enabled true
end

package "jenkins" do
  action :install
end

template "/etc/sysconfig/jenkins" do
  user "root"
  group "root"
  mode "0644"
  notifies :restart, "service[jenkins]", :delayed
end

service "jenkins" do
  supports :status => true, :restart => true, :reload => false
  action [:enable, :start]
end
