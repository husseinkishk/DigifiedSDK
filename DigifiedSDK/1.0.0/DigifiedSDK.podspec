Pod::Spec.new do |s|
  s.name             = 'DigifiedSDK'
  s.version          = '1.0.0'
  s.summary          = 'DigifiedSDK is a Digital Identity Verification Technology SDK'
  s.description      = <<-DESC
    Digified is a Cairo-Based Startup working in the FinTech & Government Services. It is providing digital identity solutions to digitalize on-boarding process such as official documents verification, data extraction, face matching and aliveness detection based on machine learning and OCR technologies that can support market places, telecom operators, banking sector and governmental services
                        DESC
  s.homepage         = 'https://gitlab.com/VerifiedTechnical/ios-digified-app'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'husseinkishk' => 'kishk@digified.io' }
#  s.source           = { :git => 'https://gitlab.com/VerifiedTechnical/ios-digified-app.git' }
  s.source           = { :http => 'https://github.com/husseinkishk/DigifiedSDK/releases/download/1.0.0/DigifiedSDK.zip' }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
# s.source_files = 'DigifiedSDK/Classes/**/*'
# s.resources = ['DigifiedSDK/Resources/**/*.{xml,tflite,jpg}']
  s.ios.vendored_frameworks = 'DigifiedSDK.framework'
  s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'CoreMotion', 'Vision'
  s.dependency 'StatusAlert', '~> 1.1.1'
  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'
  s.dependency 'lottie-ios', '~> 2.5.0'
  s.dependency 'KeychainSwift'
  s.dependency 'Connectivity'
  s.dependency 'TensorFlowLiteSwift'
  s.static_framework = true
end
