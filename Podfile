source 'https://cdn.jsdelivr.net/cocoa/'

platform :ios, '10.0'

use_frameworks!

workspace 'DemoCPIncrementalBug'
project 'DemoCPIncrementalBug'

# ignore all warnings from all pods
inhibit_all_warnings!

install! 'cocoapods', deterministic_uuids: true,
                      generate_multiple_pod_projects: true,
                      incremental_installation: true

abstract_target 'All' do
  pod 'BlocksKit/Core'
  target 'App' do
    pod 'BlocksKit'
    pod 'DevPod/App', path: './DevPod/'
  end
  target 'Widget' do
    pod 'DevPod/Widget', path: './DevPod/'
  end
end

post_install do |installer|
  installer.generated_projects.map(&:targets).flatten.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
      config.build_settings['SWIFT_VERSION'] = '4.2'
    end
  end
end
