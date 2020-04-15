class S3image < ApplicationRecord
    mount_uploader :file_name, ImageUploader
end
