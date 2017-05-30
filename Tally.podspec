#
# Be sure to run `pod lib lint Tally.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "Tally"
s.version          = "0.5.0"
s.summary          = "Simple framework do events based on the number of times user has open the application"
s.homepage         = 'https://github.com/stockx/Tally'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Laurent Shala' => 'laurentshala@icloud.com' }
s.social_media_url = 'https://twitter.com/laurentshala'
s.platform         = :ios, '8.0'
s.ios.deployment_target = '8.0'
s.source           = { :git => 'https://github.com/stockx/Tally.git', :tag => s.version.to_s }

s.source_files = 'Tally/Classes/**/*'
s.description      = <<-DESC

Tally is used to check how many times the user has opened the application using a
simple `if` statement. This adds a lot of flexability on when you want something to happen.
Want to fire off an alert after the 15th opening? Easy.
DESC





end
