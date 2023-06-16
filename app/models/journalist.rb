class Journalist < ApplicationRecord
    validates :name, :lastname, :speciality, presence: true #El validador de presencias
end

