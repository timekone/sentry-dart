Pod::Spec.new do |s|
  s.name             = 'sentry_flutter'
  s.version          = '0.0.1'
  s.summary          = 'Sentry SDK for Flutter.'
  s.description      = <<-DESC
Sentry SDK for Flutter with support to native through sentry-cocoa.
                       DESC
  s.homepage         = 'https://sentry.io'
  s.license          = { :file => '../LICENSE' }
  s.authors          = "Sentry"
  s.source           = { :git => "https://github.com/getsentry/sentry-dart.git",
                         :tag => s.version.to_s }
  s.source_files     = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Sentry', '~> 7.25.1'
  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.ios.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.osx.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
