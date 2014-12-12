Pod::Spec.new do |s|
  s.name = "HYPEventManager@ZL"
  s.version = "0.2.2"
  s.summary = "HYPEventManager is the easiest way to add, update and remove iOS calendar events"
  s.description = <<-DESC
                   * HYPEventManager is the easiest way to add, update and remove iOS calendar events
                   DESC
  s.homepage = "https://github.com/KingAndroid/HYPEventManager"
  s.license = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author = { "King Android" => "kingandroid627@yahoo.com" }
  s.platform = :ios, '6.0'
  s.source = {
    :git => 'https://github.com/KingAndroid/HYPEventManager.git',
    :tag => s.version.to_s
  }
  s.source_files = 'HYPEventManager/'
  s.frameworks = 'Foundation', 'EventKit'
  s.requires_arc = true
end