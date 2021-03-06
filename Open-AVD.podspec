#
# Be sure to run `pod lib lint PLPlayerKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Open-AVD"
  s.version          = "1.0.8"
  s.summary          = "3Tee Open-AVD SDK for ios, audio video and data communication"
  s.homepage         = "https://github.com/honggf/Open-AVD"
  s.license          = 'MIT'
  s.author           = { "honggf" => "554225932@qq.com" }
  s.source           = { :git => "https://github.com/honggf/Open-AVD.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  # s.public_header_files = "public/*.h"
  s.source_files = 'public/*.h'

  s.frameworks = ["UIKit", "Foundation", "CoreGraphics", "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES", "AVFoundation"]
  s.libraries = "c++", "z", "bz2", "iconv"

  s.preserve_paths         = "public/*.h", 'lib/*.a'
  s.vendored_libraries   = 'lib/*.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/lib" }

end
