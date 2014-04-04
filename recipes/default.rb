#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2014, Marcy
#
# MIT License
#

yum_repository "jenkins" do
  description "jenkins repo"
  baseurl "http://pkg.jenkins-ci.org/redhat/"
  gpgkey  "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
  enabled true
end

package "java" do
  version "1.7.0"
  action :install
end

package "jenkins" do
  action :install
end
 
service "jenkins" do
  action [:enable, :start]
end
