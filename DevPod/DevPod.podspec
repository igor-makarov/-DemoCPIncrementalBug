filename = File.basename(__FILE__, '.podspec')

Pod::Spec.new do |s|
  s.name         = filename.to_s
  s.version      = '0.0.1'
  s.summary      = "DevPod #{filename} BLA"

  s.description  = <<-DESC
  #{filename} Files BLA
  DESC
  s.homepage     = 'NONE'
  s.license      = 'None'
  s.author = { 'Igor Makarov' => 'igor.makarov@moovitapp.com' }
  s.source = { git: 'git@codebasehq.com:tranzmate/tranzmate/iphone-v4.git' }

  s.default_subspecs = %w[App Widget]

  s.subspec 'Common' do |sp|
    sp.source_files = 'Common/*.swift'
  end

  s.subspec 'App' do |sp|
    sp.ios.deployment_target = '9.0'
    sp.source_files = 'App/*.swift'
    sp.dependency 'DevPod/Common'
  end

  s.subspec 'Widget' do |sp|
    sp.ios.deployment_target = '9.0'
    sp.source_files = 'Widget/*.swift'
    sp.dependency 'DevPod/Common'
  end
end
