Pod::Spec.new do |s|
  s.name            = "Primus"
  s.version         = "0.0.1"
  s.summary         = "Primus is a simple abstraction around real-time frameworks. It allows you to easily switch between different frameworks without any code changes."
  s.homepage        = "https://github.com/seegno/Primus"
  s.author          = "Nuno Sousa"
  s.license         = "MIT"
  s.source          = { :git => 'https://github.com/seegno/primus-objc.git', :tag => "#{s.version}" }
  s.requires_arc    = true
  s.default_subspec = 'All'

  s.subspec 'All' do |ss|
    ss.dependency 'Primus/Core'
    ss.dependency 'Primus/Parsers'
    ss.dependency 'Primus/Transformers'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = "Primus/*.{h,m}", "Primus/Core/**/*.{h,m}"

    ss.dependency 'BlocksKit/DynamicDelegate'
    ss.dependency 'EventEmitter'
    ss.dependency 'NSTimer-Blocks'
  end

  s.subspec 'Parsers' do |ss|
    ss.source_files = "Primus/Parsers/**/*.{h,m}"
  end

  s.subspec 'Transformers' do |ss|
    ss.source_files = "Primus/Transformers/**/*.{h,m}"
  end
end
