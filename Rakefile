# -*- coding: utf-8 -*-
$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'
require 'bundler'
Bundler.require
require 'bubble-wrap/location'
require 'bubble-wrap/sms'

Motion::Project::App.setup do |app|
  app.name = 'getHelp'
  app.identifier = 'com.your_domain_here.gethelp'
  app.short_version = '0.1.0'
  app.version = app.short_version
  app.deployment_target = '7.0'
  app.device_family = [:iphone]
  app.interface_orientations = [:portrait]
  app.frameworks += ['CoreLocation']
  app.prerendered_icon = true
  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))
  app.info_plist["NSLocationWhenInUseUsageDescription"] = "I am using CLLocation to get user current location"
  app.info_plist["NSLocationAlwaysUsageDescription"] = "Location is required to send message"
end
task :"build:simulator" => :"schema:build"
