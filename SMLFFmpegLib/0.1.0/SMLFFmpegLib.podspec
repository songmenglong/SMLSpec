#
# Be sure to run `pod lib lint SMLFFmpegLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMLFFmpegLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SMLFFmpegLib.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/songmenglong/SMLFFmpegLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'songmenglong' => '983174628@qq.com' }
  s.source           = { :git => 'https://github.com/songmenglong/SMLFFmpegLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '10.0'
  
  # s.source_files = 'SMLFFmpegLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SMLFFmpegLib' => ['SMLFFmpegLib/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'include' do |include|
    include.subspec 'libavcodec' do |avcodec|
      avcodec.source_files = 'FFmpeg/include/libavcodec/*.h'
      avcodec.public_header_files = 'FFmpeg/include/libavcodec/*.h'
    end
    
    include.subspec 'libavformat' do |avformat|
      avformat.source_files = 'FFmpeg/include/libavformat/*.h'
      avformat.public_header_files = 'FFmpeg/include/libavformat/*.h'
    end
    
    include.subspec 'libavutil' do |avutil|
      avutil.source_files = 'FFmpeg/include/libavutil/*.h'
      avutil.public_header_files = 'FFmpeg/include/libavutil/*.h'
    end
    
    include.subspec 'libswresample' do |swresample|
      swresample.source_files = 'FFmpeg/include/libswresample/*.h'
      swresample.public_header_files = 'FFmpeg/include/libswresample/*.h'
    end
    
    include.subspec 'libswscale' do |swscale|
      swscale.source_files = 'FFmpeg/include/libswscale/*.h'
      swscale.public_header_files = 'FFmpeg/include/libswscale/*.h'
    end
  end
  
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.header_mappings_dir = "FFmpeg/include"
  s.preserve_paths = "FFmpeg/**/**"
  s.vendored_libraries = "FFmpeg/lib/libavcodec.a","FFmpeg/lib/libavformat.a","FFmpeg/lib/libavutil.a","FFmpeg/lib/libswscale.a","FFmpeg/lib/libswresample.a"
  
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = ["CoreMedia", "AVFoundation","AudioToolbox","VideoToolbox"]
  s.libraries = ["c", "c++","z","iconv","bz2"]
  
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.static_framework = true
  s.xcconfig = {
    'HEADER_SEARCH_PATHS'=> '"$(SDKROOT)/FFmpeg/include/**/*.h"',
    'LIBRARY_SEARCH_PATHS'=> '"$(SDKROOT)/FFmpeg/lib"'
  }
  
  
end
