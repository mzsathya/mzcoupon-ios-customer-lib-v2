

Pod::Spec.new do |spec|

  spec.name         = "MZCustomerCoupon_lib"
  spec.version      = "1.0.0"
  spec.summary      = "API Access Platform url  and get value from server."
  spec.description  = "API Access Platform url  and get value from server Response Via Structured."
  spec.homepage     = "https://github.com/mzsathya/mzcoupon-ios-customer-lib-v2"
  spec.license      = "MIT"
  spec.author       = { "sathya" => "sathiyamoorthy.m@mezzofy.com" }
  spec.ios.deployment_target = "10.0"
  spec.swift_version = "4.0"
  spec.source       = { :git => "https://github.com/mzsathya/mzcoupon-ios-customer-lib-v2.git", :tag => "1.0.0"}
  spec.source_files  = "MZCustomerCoupon_lib/**/*.{h,m,swift}"

 spec.subspec 'no-arc' do |sp|
    sp.source_files = "MZCustomerCoupon_lib/Jastor/*.{h,m}"
    sp.requires_arc = false
    sp.compiler_flags = '-fno-objc-arc'
  end
  
  spec.dependency "AFNetworking", "~> 4.0"

end
