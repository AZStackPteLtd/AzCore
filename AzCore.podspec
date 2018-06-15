Pod::Spec.new do |s|
  s.name                  = 'AzCore'
  s.version               = '1.0.10'
  s.summary               = 'Core function for AzStack platform.'
  s.description           = <<-DESC
  AzStack is communication platform. This is the iOS sdk for AzStack.
                   DESC

  s.homepage              = 'https://azstack.com/'
  s.license               = { :type => 'BSD', :file => 'LICENSE' }
  s.authors               = { 'Luong Van Lam' => 'lamlv@azstack.com' }
  s.social_media_url      = 'https://twitter.com/lam2305'
  s.platform              = :ios, '9.0'
  s.source                = { :git => 'http://git.azstack.co/lamlv/AzCore.git', :tag => s.version.to_s }
  s.ios.source_files      = 'AzCore/**/*.{h,m,swift}'
  s.resource_bundles      = { 'Res' => 'AzRes/*' }
  
  s.requires_arc          = true
  s.swift_version         = '4.0'

  s.subspec 'CoreLibraries' do |lib|
    lib.dependency 'CocoaAsyncSocket', '~> 7.6.3'
    lib.dependency 'FMDB', '~> 2.7.2'
    lib.dependency 'ReachabilitySwift'
  end
end
