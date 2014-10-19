class Document < ActiveRecord::Base

	# Tell rails to use this uploader for this model
	mount_uploader :attachment, AttachmentUploader
	validates :name, presence: true

end
