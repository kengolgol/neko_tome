class Host < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :entrys, dependent: :destroy
  has_many :rooms, through: :entries
  has_one_attached :image

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

  # パスワードなしで更新するためのメソッド >> registrations_controllerにて呼び出し
  def configure_update_without_current_password(params, *options)
  params.delete(:current_password)

  if params[:password].blank? && params[:password_confirmation].blank?
    params.delete(:password)
    params.delete(:password_confirmation)
  end

  result = update_attributes(params, *options)
  clean_up_passwords
  result
  end
end
