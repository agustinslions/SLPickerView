#
#  Be sure to run `pod spec lint SLPickerView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SLPickerView"
  s.version      = "1.0.0"
  s.summary      = "Create easy and fast an UIPickerView."
  s.description  = "A great lib to show and manage an UIPickerView in all view with numbers and strings."
  s.homepage     = "https://github.com/agustinslions/SLPickerView.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "agustinslions" => "agustinslions@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/agustinslions/SLPickerView.git", :tag => "1.0.0" }
  s.source_files = "SLPickerView/SLPickerView/*.{h,m}"
  s.requires_arc = true
end
