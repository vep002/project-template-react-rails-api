class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: {case_sensitive: false}
    validates :password, length: {in: 5..20}
end
