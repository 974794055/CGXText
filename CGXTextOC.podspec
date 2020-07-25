Pod::Spec.new do |s|
s.name         = "CGXText"    #存储库名称
s.version      = "0.0.2"      #版本号，与tag值一致
s.summary      = "CGXText测试上次cocoapod的库"  #简介
s.description  = "CGXText测试上次cocoapod的空库"  #描述
s.homepage     = "https://github.com/974794055/CGXText"      #项目主页，不是git地址
s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
s.author             = { "974794055" => "974794055@qq.com" }  #作者
s.platform     = :ios, "8.0"                  #支持的平台和版本号
s.source       = { :git => "https://github.com/974794055/CGXText.git", :tag => s.version }         #存储库的git地址，以及tag值
s.requires_arc = true #是否支持ARC
s.frameworks = 'UIKit'

#需要托管的源代码路径
s.source_files = 'CGXTextOC/CGXTextOC.h'

#开源库头文件
s.public_header_files = 'CGXTextOC/CGXTextOC.h'

 s.subspec 'MenuA' do |ss|
    ss.source_files = 'CGXTextOC/MenuA/**/*.{h,m}'
  end
  
  s.subspec 'MenuB' do |ss|
     ss.source_files = 'CGXTextOC/MenuB/**/*.{h,m}'
     ss.dependency 'CGXTextOC/MenuA'
   end

end




