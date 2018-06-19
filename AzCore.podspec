Pod::Spec.new do |s|
  s.name                  = 'AzCore'
  s.version               = '1.0.12'
  s.summary               = 'Core function for AzStack platform.'
  s.description           = <<-DESC
  AzStack is communication platform. This is the iOS sdk for AzStack.
                   DESC

  s.homepage              = 'https://azstack.com/'
  s.license               = { :type => 'BSD', :file => 'LICENSE' }
  s.authors               = { 'Luong Van Lam' => 'lamlv@azstack.com' }
  s.social_media_url      = 'https://twitter.com/lam2305'
  s.platform              = :ios, '9.0'
  s.source                = {
    :http => 'https://github.com/AZStackPteLtd/AzCore/archive/' + s.version.to_s + '.zip'
  }
  s.ios.source_files      = 'AzCore-' + s.version.to_s + '/AzCore.framework/Headers/*.h'
  s.ios.public_header_files = 'AzCore-' + s.version.to_s + '/AzCore.framework/Headers/*.h'
  s.ios.vendored_frameworks = 'AzCore-' + s.version.to_s + '/AzCore.framework'
  s.resource_bundles      = { 
    'Res' => [
      'AzCore-' + s.version.to_s + '/AzCore.framework/onChat.data',
      'AzCore-' + s.version.to_s + '/AzCore.framework/vi.lproj/*',
      'AzCore-' + s.version.to_s + '/AzCore.framework/en.lproj/*'
    ]
  }
  
  s.requires_arc          = true
  s.swift_version         = '4.0'

  s.subspec 'CoreLibraries' do |lib|
    lib.dependency 'CocoaAsyncSocket', '~> 7.6.3'
    lib.dependency 'FMDB', '~> 2.7.2'
    lib.dependency 'ReachabilitySwift'
  end
end
