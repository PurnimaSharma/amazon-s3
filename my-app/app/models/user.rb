class User
  include Mongoid::Document
  include Mongoid::Timestamps
   mount_uploader :image, UserUploader

  field :image,type: String
  field :name, type: String
end
