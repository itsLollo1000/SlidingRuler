Pod::Spec.new do |s|
  s.name             = 'ZMSlidingRuler'
  s.version          = '0.2.7'
  s.summary          = 'SlidingRuler'
  s.homepage         = 'https://github.com/githubzephyrmobile/SlidingRuler'
  s.license          = { 'type' => 'Commercial', 'text' => 'Zephyrmobile internal use only.' }
  s.author           = { 'Zephyr Mobile' => 'ios-dev@zephyrmobile.com' }
  s.source           = { :git => 'https://github.com/githubzephyrmobile/SlidingRuler.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.0'
  s.source_files = 'Sources/**/*'
end
