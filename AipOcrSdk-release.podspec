#
# Be sure to run `pod lib lint AipOcrSdk-release.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AipOcrSdk-release'
  s.version          = '0.1.0'
  s.summary          = 'AipOcrSdk-release...'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AipOcrSdk dynamic framework -release
                       DESC

  s.homepage         = 'https://github.com/kinarob/AipOcrSdk-release'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kinarobi' => 'kinarobin@outlook.com' }
  s.source           = { :git => 'https://github.com/kinarob/AipOcrSdk-release.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.subspec 'AipBase' do |b|
      b.vendored_frameworks ='AipOcrSdk-release/Classes/AipBase.framework'
  end
  
  s.subspec 'AipOcrSdk' do |s|
      s.vendored_frameworks ='AipOcrSdk-release/Classes/AipOcrSdk.framework'
  end
  
  s.subspec 'IdcardQuality' do |i|
      i.vendored_frameworks ='AipOcrSdk-release/Classes/IdcardQuality.framework'
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
