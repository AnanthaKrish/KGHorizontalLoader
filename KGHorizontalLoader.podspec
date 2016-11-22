Pod::Spec.new do |s|
  s.name         = "KGHorizontalLoader"
  s.version      = "1.0.0"
  s.summary      = "Loading animation"
  s.homepage     = "https://github.com/Gypsyan/KGHorizontalLoader"
  s.license      = 'Apache License, Version 2.0'
  s.author             = { "Ananth" => "ananthanmymail@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/Gypsyan/KGHorizontalLoader.git", :tag => s.version }
  s.source_files  = "KGHorizontalLoader/*.swift"
end
