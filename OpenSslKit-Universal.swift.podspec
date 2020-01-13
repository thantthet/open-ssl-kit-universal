Pod::Spec.new do |s|
  s.name             = 'OpenSslKit-Universal.swift'
  s.module_name      = 'OpenSslKit'
  s.version          = '1.0.1'
  s.summary          = 'OpenSsl crypto library with base58 conversion for Swift. Supports iOS & OSX'

  s.description      = <<-DESC
OpenSslKit includes crypto functions that can be used in pure Swift. It supports openssl, base58, sha3 keccak256.
                       DESC

  s.homepage         = 'https://github.com/cuhte3/open-ssl-kit-universal'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch', 'farid' => 'farid@getportal.co' }
  s.source           = { git: 'https://github.com/cuhte3/open-ssl-kit-universal.git', tag: "#{s.version}" }
  s.social_media_url = 'http://horizontalsystems.io/'

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target  = '10.14'
  s.swift_version = '5'

  s.source_files = 'OpenSslKit/Classes/**/*'

  s.preserve_paths = ['OpenSslKit/Libraries']

  s.ios.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/OpenSslKit/Libraries/ios/include"',
    'LIBRARY_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/OpenSslKit/Libraries/ios/lib"'
  }
  s.ios.vendored_libraries  = 'OpenSslKit/Libraries/ios/lib/libcrypto.a'

  s.osx.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/OpenSslKit/Libraries/osx/include"',
    'LIBRARY_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/OpenSslKit/Libraries/osx/lib"'
  }
  s.osx.vendored_libraries  = 'OpenSslKit/Libraries/osx/lib/libcrypto.a'


end
