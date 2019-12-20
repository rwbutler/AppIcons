#
# Be sure to run `pod lib lint AppIcons.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppIcons'
  s.version          = '0.2.2'
  s.swift_version    = '5.0'
  s.summary          = 'Provides support for alternate app icons with UI for icon selection'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Provides support for alternate app icons including UI allowing users to select an app icon dynamically
                       DESC

  s.homepage         = 'https://github.com/rwbutler/AppIcons'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ross Butler' => 'github@rwbutler.com' }
  s.source           = { :git => 'https://github.com/rwbutler/AppIcons.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ross_w_butler'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AppIcons/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AppIcons' => ['AppIcons/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'FlexibleRowHeightGridLayout'
end
