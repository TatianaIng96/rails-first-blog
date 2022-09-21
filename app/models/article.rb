class Article < ApplicationRecord
  include Visible

  # Elimina los comentarios sí el articulo es eliminado
  has_many :comments, dependent: :destroy 

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
