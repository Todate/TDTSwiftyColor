#
# Be sure to run `pod lib lint TDTSwiftyColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDTSwiftyColor'
  s.version          = '0.3.2'
  s.summary          = 'TDTSwiftyColor is UIColor extension for Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TDTSwiftyColor is UIColor extension for Swift.
Depending on my need, I make modifications at any time.
                       DESC

  s.homepage         = 'https://github.com/Todate/TDTSwiftyColor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Todate' => 'tdt.dice.k0826@gmail.com' }
  s.source           = { :git => 'https://github.com/Todate/TDTSwiftyColor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TDTSwiftyColor/Classes/**/*'

  # s.resource_bundles = {
  #   'TDTSwiftyColor' => ['TDTSwiftyColor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
