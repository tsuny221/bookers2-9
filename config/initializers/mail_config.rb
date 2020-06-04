ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: '',#送信先となる自分のメールアドレスを入れる
  password: '',#送信先となるメールアドレスのパスワードを入れる
  authentication: 'plain',
  enable_starttls_auto: true
}