# frozen_string_literal: true

require 'cloudinary'
require 'shrine/storage/cloudinary'
Cloudinary.config(
  cloud_name: 'dutp9tvqi',
  api_key: '457343445828972',
  api_secret: 'mqGxlW9XMy2TGJQHYFdkdEY_OSU'
)
Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: 'test_app/cache'), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: 'test_app')
}
Shrine.plugin :activerecord           # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :restore_cached_data    # extracts metadata for assigned cached files
Shrine.plugin :validation_helpers
Shrine.plugin :validation
