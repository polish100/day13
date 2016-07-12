class Inquiry < ActiveRecord::Base
  validates :name, presence: { message: '名前を入力してください' }
  validates :email, presence: { message: 'メールアドレスを入力してください' }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX, message:
    '正しいメールアドレスを入力してください' }
  validates :message, presence: { message: 'メッセージを入力してください' }
end
