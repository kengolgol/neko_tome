class Host < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex
  belongs_to :personality
  belongs_to :prefecture
  belongs_to :job

  with_options presence: { message: "に値を入力してください" } do
    validates :nickname
    validates :town
    validates :address
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "ハイフン(-)を使用して入力してください" }

    with_options format: { with:  /\A[ぁ-んァ-ヶ一-龥々ー]+\z/} do
      validates :last_name
      validates :first_name
    end
      
    with_options numericality: { other_than: 1 } do
      validates :sex_id
      validates :personality_id
      validates :prefecture_id
      validates :job_id
    end
  end

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i , message: "半角英数字混合で入力してください"}
end
