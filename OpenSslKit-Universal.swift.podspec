Pod::Spec.new do |s|
  s.name             = 'OpenSslKit-Universal.swift'
  s.module_name      = 'OpenSslKit'
  s.version          = '1.2.2'
  s.summary          = 'OpenSsl crypto library with base58 conversion for Swift and Scrypt hash for litecoin. Supports iOS & macOS via xcframework'

  s.description      = <<-DESC
OpenSslKit includes crypto functions that can be used in pure Swift. It supports openssl, base58, sha3 keccak256, scrypt.
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
  s.vendored_frameworks = 'OpenSslKit/Frameworks/OpenSSL.xcframework'
end

