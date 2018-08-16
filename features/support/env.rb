require 'rspec'
require 'appium_lib'
require 'pry'
require 'faker'
require 'selenium-webdriver'
require 'cpf_faker'

def wait_for
    Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
end

def caps
{ caps: {
    deviceName: "Anyname",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__), "Natura_app.apk")),
    appPackage: "net.natura.semprepresente",
    appActivity: "net.natura.app.home.base.view.HomeActivity",
    newCommandTimeout: "3600"
}}
end



Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

=begin 
dumpsys window windows | grep -E ‘mCurrentFocus|mFocusedApp’
=end

