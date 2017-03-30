Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "ABHPhotoGallery"
s.summary = "ABHPhotoGallery lets a user create photo gallery in a few steps."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4
s.author = { "Alexey Bolvonovich" => "alexeybolv@gmail.com" }

# 5
s.homepage = "https://github.com/alexeybolv/ABHPhotoGallery.git"

# 6
s.source = { :git => "https://github.com/alexeybolv/ABHPhotoGallery.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "ABHPhotoGallery/**/*.{swift}"

# 9
s.resources = "ABHPhotoGallery/**/*.{png,jpeg,jpg,storyboard,xib}"
end
