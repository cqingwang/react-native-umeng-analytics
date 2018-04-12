path="https://github.com/cqingwang/react-native-umeng-analytics"

Pod::Spec.new do |s|

require 'json'
pjson = JSON.parse(File.read('package.json'))

  s.name            ="react-native-umeng-analytics"
  s.version         = pjson["version"]
  s.homepage        = "#path"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "cqingwang" => "wangchangqing_2009@126.com" }
  s.ios.deployment_target = '8.0'
  s.source          = { :git => "#{path}.git", :branch => "master" }
  s.vendored_frameworks =[
  "ios/analytics_ios_5.4.1/UMAnalytics.framework",
  "ios/common_ios_1.4.2/normal/UMCommon.framework"
  ]
  s.source_files    =  "ios/RCTUmengAnalytics/*.{h,m}"
  s.preserve_paths  = "**/*.js"

  s.dependency 'React/Core'

end
