unless Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
        config.fog_credentials = {
            provider: 'AWS',
            aws_access_key_id: 'AKIAXYMW4DSNLPJUGYBU',
            aws_secret_access_key: '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',
            region: 'ap-northeast-1'
        }

        config.fog_directory  = 'supremearchive'
        config.cache_storage = :fog
    end
end