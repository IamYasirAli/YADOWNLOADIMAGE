
Pod::Spec.new do |spec|

  spec.name         = "YADOWNLOADIMAGE"
  spec.version      = "0.0.2"
  spec.summary      = "A CocoaPods library written in Swift"



  spec.description  = <<-DESC
                   This CocoaPods library helps you to download any image using alamofire
			DESC

  spec.homepage     = "https://github.com/IamYasirAli/YADOWNLOADIMAGE" 
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "IamYasirAli" => "kawishali40@hotmail.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.dependency 'Alamofire'

  spec.source = { :git => "https://github.com/IamYasirAli/YADOWNLOADIMAGE.git", :tag => "#{spec.version}" }

  spec.source_files  = "YADOWNLOADIMAGE/**/*.{h,m,swift}"



end
