class User < ApplicationRecord
  has_secure_password #password e password_confirmation campos virtuais
  validates :email, presence:true, format: { with: /\A[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}\z/i, message: "E-mail inválido!" }
end