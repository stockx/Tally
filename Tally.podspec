Pod::Spec.new do |s|
  s.name                  = 'Tally'
  s.version               = '1.0.1'
  s.summary               = 'Tally is a simple framework that checks how many times the user has opened the application'
  s.homepage              = 'https://github.com/stockx/Tally'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Laurent Shala' => 'laurentshala@icloud.com' }
  s.social_media_url      = 'https://twitter.com/laurentshala'
  s.ios.deployment_target = '8.0'
  s.source                = { :git => 'https://github.com/stockx/Tally.git', :tag => s.version.to_s }
  s.source_files          = 'Tally/Classes/**/*'
  s.description           = <<-DESC
Tally is used to check how many times the user has opened the application using a
simple `if` statement. This adds a lot of flexability on when you want something to happen.
Want to fire off an alert after the 15th opening? Easy.
                            DESC

end
