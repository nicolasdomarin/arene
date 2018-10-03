class Fichier < ApplicationRecord
  has_attached_file :doc, :path => ":rails_root/csv"
end
