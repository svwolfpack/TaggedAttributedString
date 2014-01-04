Pod::Spec.new do |s|
  s.name         = "TaggedAttributedString"
  s.version      = "1.1.1"

  s.summary      = "A category on NSString for quickly generating attributed strings from HTML-style tags."
  s.description  = "NSAttributedStrings are quite useful in UILabels and UITextViews, however they're not particularly user-friendly, especially with dynamic text. TaggedAttributedString is a simple way to generate NSAttributedStrings using lightweight HTML-style tags, and makes using NSAttributedStrings far less painful."
  s.homepage     = "https://github.com/svwolfpack/TaggedAttributedString"

  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Sam Voigt" => "sam@intrepid.io" }

  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/svwolfpack/TaggedAttributedString.git", :tag => "1.0.0" }
  s.source_files  = 'TaggedAttributedString/*.{h,m}'
  s.requires_arc = true
end
