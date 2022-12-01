class Cart < ApplicationRecord
    belongs_to :user
    belongs_to :article
    validates :user_id, uniqueness: { scope: :article_id, message: "Cet article a déjà été ajouté au panier." }
end
