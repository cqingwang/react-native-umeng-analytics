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
  s.source          = { :git => "#{path}.git", :tag => "v#{s.version}" }
  s.source_files    = 'ios/*/*.{h,m,frameworks}' 'ios/*/*/*.{h,m,frameworks}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'React/Core'

end