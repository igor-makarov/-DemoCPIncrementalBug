require 'yaml'

project.name = 'DemoCPIncrementalBug'

application_for :ios, '10.0' do |app|
  app.name = 'App'
  app.all_configurations.each do |config|
    config.product_bundle_identifier = 'com.igor.democpincrementalbug.app'
  end

  extension_for app do |widget|
    widget.name = 'Widget'
    widget.all_configurations.each do |config|
      config.product_bundle_identifier = 'com.igor.democpincrementalbug.widget'
    end
  end

  app.copy_files_build_phase 'Embed App Extensions' do |phase|
    phase.destination = :plug_ins
    phase.destination_path = ''
    phase.files = ['Products/Widget.appex']
  end
end

project.after_save do
  system "rm -rf \"#{project.name}.xcodeproj/xcshareddata/xcschemes\""
end
