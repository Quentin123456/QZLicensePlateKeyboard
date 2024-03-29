#
# Be sure to run `pod lib lint QZLicensePlateKeyboard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QZLicensePlateKeyboard'
  s.version          = '1.0.0'
  s.summary          = 'This is a license plate type keyboard.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a license plate type keyboard, which can provide you with a professional license plate number keyboard in your app.
                       DESC

  s.homepage         = 'https://github.com/Quentin123456/QZLicensePlateKeyboard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Quentin Zang' => 'quentinzang@gmail.com' }
  s.source           = { :git => 'https://github.com/Quentin123456/QZLicensePlateKeyboard.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'QZLicensePlateKeyboard/Classes/**/*'
  
  # s.resource_bundles = {
  #   'QZLicensePlateKeyboard' => ['QZLicensePlateKeyboard/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
