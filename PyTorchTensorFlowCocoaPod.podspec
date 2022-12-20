#
# Be sure to run `pod lib lint PyTorchTensorFlowCocoaPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PyTorchTensorFlowCocoaPod'
  s.version          = '0.1.13'
  s.summary          = 'A short description of PyTorchTensorFlowCocoaPod.'
  s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/steve-ham/PyTorchTensorFlowCocoaPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'steve-ham' => 'steve.ham@kakaomobility.com' }
  s.source           = { :git => 'https://github.com/steve-ham/PyTorchTensorFlowCocoaPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'PyTorchTensorFlowCocoaPod/Classes/**/*'
  
  s.static_framework = true
  
#  s.dependency 'TensorFlowLiteSwift'
  s.dependency 'LibTorch'
  
  s.pod_target_xcconfig = {
        'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/LibTorch/install/include"'
    }
    s.library = 'c++', 'stdc++'
  
#  s.default_subspec = 'Core'
#      s.subspec 'Core' do |ss|
#          ss.dependency 'LibTorch/Torch'
#          ss.source_files = 'src/*.{h,cpp,c,cc}'
#          ss.public_header_files = ['src/LibTorch.h']
#      end
#      s.subspec 'Torch' do |ss|
#          ss.header_mappings_dir = 'install/include/'
#          ss.preserve_paths = 'install/include/**/*.{h,cpp,cc,c}'
#          ss.vendored_libraries = 'install/lib/*.a'
#          ss.libraries = ['c++', 'stdc++']
#      end
#      s.user_target_xcconfig = {
#          'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/LibTorch/install/include/"',
#          'OTHER_LDFLAGS' => '-force_load "$(PODS_ROOT)/LibTorch/install/lib/libtorch.a" -force_load "$(PODS_ROOT)/LibTorch/install/lib/libtorch_cpu.a"',
#          'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14',
#          'CLANG_CXX_LIBRARY' => 'libc++'
#      }
#      s.pod_target_xcconfig = {
#          'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_ROOT)/LibTorch/install/include/"',
#          'VALID_ARCHS' => 'x86_64 arm64'
#      }
#      s.library = ['c++', 'stdc++']
#      s.frameworks = 'Accelerate'
  
#  s.pod_target_xcconfig = {
#      'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/LibTorch-Lite/install/include',
#      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
#  }
#  s.user_target_xcconfig = {
#      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
#  }
  
  # s.resource_bundles = {
  #   'PyTorchTensorFlowCocoaPod' => ['PyTorchTensorFlowCocoaPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
