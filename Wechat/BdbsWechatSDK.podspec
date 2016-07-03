

Pod::Spec.new do |s|


  s.name         = "BdbsWechatSDK"
  s.version      = "0.0.1"
  s.summary      = "BdbsWechatSDK WechatSDK for Cocoapods."
  s.homepage     = "https://open.weixin.qq.com/"
  s.license      = "MIT"
  s.authors = {
    "Tencent" => "weixinapp@qq.com"
  }
  
  s.platform     = :ios
  s.source = {
    :git => "https://github.com/sujiandong/BdbsWechatSDK.git",
    :tag => "#{s.version}"
  }

  s.source_files = "*.h"
  s.public_header_files = "*.h"
  s.preserve_paths = "libWeChatSDK.a"
  s.vendored_libraries = "libWeChatSDK.a"
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/BdbsWechatSDK"',
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/BdbsWechatSDK"'
  }
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  s.libraries = 'z', 'sqlite3.0', 'c++'

end
