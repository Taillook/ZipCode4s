Pod::Spec.new do |s|
  s.name              = "ZipCode4s"
  s.version           = "1.2.0"
  s.summary           = "Swift library for manipulating postal codes."
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage          = "https://github.com/Taillook/ZipCode4s"
  s.author            = { "Taillook" => "taillook.s[at]gmail.com" }
  s.social_media_url  = "http://twitter.com/Taillook"
  s.source            = { :git => "https://github.com/Taillook/ZipCode4s.git", :tag => "1.2.0" }
  s.platform          = :ios, '8.0'
  s.requires_arc      = true
  s.source_files      = 'ZipCode4s/*.{h,m,swift}'
  s.resource          = 'ZipCode4s/*.csv'
end
