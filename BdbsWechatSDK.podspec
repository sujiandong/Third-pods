

Pod::Spec.new do |s|


  s.name         = "BdbsWechatSDK"
  s.version      = "1.0.0"
  s.summary      = "BdbsWechatSDK WechatSDK for Cocoapods."
  s.homepage     = "https://open.weixin.qq.com/"
  s.license      = "MIT"
  s.authors = {
    "Tencent" => "weixinapp@qq.com"
  }
  
  s.platform     = :ios
  s.source = {
    :git => "https://github.com/sujiandong/Third-pods.git",
    :tag => "#{s.version}"
  }

  s.source_files = "Wechat/*.h"
  s.public_header_files = "Wechat/*.h"
  s.preserve_paths = "Wechat/libWeChatSDK.a"
  s.vendored_libraries = "Wechat/libWeChatSDK.a"
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Wechat/BdbsWechatSDK"',
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/Wechat/BdbsWechatSDK"'
  }
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  s.libraries = 'z', 'sqlite3.0', 'c++'

end
