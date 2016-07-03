

Pod::Spec.new do |s|


  s.name         = "BdbsAlipaySDK"
  s.version      = "1.0.0"
  s.summary      = "BdbsAlipaySDK AlipaySDK for Cocoapods."
  s.homepage     = "https://b.alipay.com/newIndex.htm"
  s.license      = "MIT"
  s.authors = {
    "AliPay" => "https://www.alipay.com/"
  }
  
  s.platform     = :ios, "7.0"
  s.requires_arc = true
  s.source = {
    :git => "https://github.com/sujiandong/Third-pods.git",
    :tag => "#{s.version}"
  }

  s.frameworks = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation'
  s.libraries = 'z', 'c++'

  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/Alipay/BdbsAlipaySDK', 
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/Alipay/BdbsAlipaySDK', 
  }

  s.subspec "Core" do |core|
    core.public_header_files = "Alipay/AlipaySDK.framework/Headers/**/*.h"
    core.vendored_frameworks = "Alipay/AlipaySDK.framework"
    core.resources = "AlipaySDK.bundle"
  end

  s.subspec "Util" do |util|
    util.public_header_files = "Alipay/Utils/Util/*.h", "Alipay/Utils/openssl/*.h"
    util.header_mappings_dir = "Alipay/Utils"
    util.source_files = "Alipay/Utils/Util/*.{h,m}", "Alipay/Utils/openssl/*.h"
    util.vendored_libraries = "Alipay/Utils/libcrypto.a", "Alipay/Utils/libssl.a"
    util.dependency "Alipay/BdbsAlipaySDK/Core"
  end


end
