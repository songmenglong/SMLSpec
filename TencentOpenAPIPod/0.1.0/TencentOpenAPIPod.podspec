#
# Be sure to run `pod lib lint TencentOpenAPIPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TencentOpenAPIPod'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TencentOpenAPIPod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/songmenglong/TencentOpenAPIPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'songmenglong' => '983174628@qq.com' }
  s.source           = { :git => 'https://github.com/songmenglong/TencentOpenAPIPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  #s.source_files = 'TencentOpenAPIPod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TencentOpenAPIPod' => ['TencentOpenAPIPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.frameworks            = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries             = 'iconv', 'sqlite3', 'stdc++', 'z'
  s.resource              = 'TencentOpenAPIPod/Framework/TencentOpenApi_IOS_Bundle.bundle'
  s.vendored_frameworks   = 'TencentOpenAPIPod/Framework/TencentOpenAPI.framework'
  s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.requires_arc          = true
end
