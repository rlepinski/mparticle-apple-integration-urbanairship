Pod::Spec.new do |s|
    s.name             = "mParticle-UrbanAirship"
    s.version          = "6.7.1"
    s.summary          = "Urban Airship integration for mParticle"

    s.description      = <<-DESC
                       This is the Urban Airship integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-urbanairship.git", :tag => s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticles"
    s.default_subspec  = "DefaultVersion"

    def s.subspec_common(ss)
        ss.ios.deployment_target = "8.0"
        ss.ios.source_files      = 'mParticle-UrbanAirship/*.{h,m,mm}'
        ss.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 6.7'
    end

    s.subspec 'DefaultVersion' do |ss|
        ss.ios.dependency 'UrbanAirship-iOS-SDK', '~> 7.2.2'
        s.subspec_common(ss)
    end

    s.subspec 'UserDefinedVersion' do |ss|
        ss.ios.dependency 'UrbanAirship-iOS-SDK'
        s.subspec_common(ss)
    end
end
