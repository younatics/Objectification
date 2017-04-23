#
# Be sure to run `pod lib lint YNDropDownMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Objectification'
  s.version          = '1.0.0'
  s.summary          = 'Return objects where string is contained in object!'

  s.description      = <<-DESC
                        Magic will be happened when you use Objectification!
                        DESC

  s.homepage         = 'https://github.com/younatics/Objectification'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Seungyoun Yi" => "younatics@gmail.com" }

  s.source           = { :git => 'https://github.com/younatics/Objectification.git', :tag => s.version.to_s }
  s.source_files     = 'Objectification/*.swift'

  s.ios.deployment_target = '8.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
