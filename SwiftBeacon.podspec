Pod::Spec.new do |s|
  s.name             = 'SwiftBeacon'
  s.version          = '1.0.1'
  s.summary          = 'A lightweight library to log your codes and errors safely.'
  s.homepage         = 'https://github.com/nazmiyavuz/SwiftBeacon'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nazmiyavuz' => 'nazmiyavuz@gmail.com' }
  s.source           = { :git => 'https://github.com/nazmiyavuz/SwiftBeacon.git', :tag => s.version.to_s }
  s.readme           = "https://raw.githubusercontent.com/nazmiyavuz/SwiftBeacon/#{s.version.to_s}/README.md"
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '12'

  s.source_files = 'SwiftBeacon/Classes/**/*'
  s.swift_versions   = ['6.0']
end
