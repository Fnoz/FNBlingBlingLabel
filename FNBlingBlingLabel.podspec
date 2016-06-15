Pod::Spec.new do |s|

  s.name = 'FNBlingBlingLabel'
  s.summary = 'FNBlingBlingLabel'
  s.homepage = 'https://github.com/Fnoz/FNBlingBlingLabel'
  s.author = { 'Fnoz' => 'fnoz@sina.com' }
  s.source = { :git => 'https://github.com/Fnoz/FNBlingBlingLabel.git'}
  s.description = 'Swift - Animation - Daily NO.01.'
  s.platform     = :ios, '7.0'
  s.license      = "MIT"
  s.requires_arc = true
  s.default_subspec = 'FNBlingBlingLabel'
  s.subspec 'FNBlingBlingLabel' do |blingBlingLabel|
    blingBlingLabel.source_files = 'FNBlingBlingLabel/FNBlingBlingLabel/*.{swift}'
  end

end
