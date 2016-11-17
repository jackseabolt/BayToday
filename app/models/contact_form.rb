class ContactForm < MailForm::Base
  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message

  def headers
    {
      :to => "seaboltmarketing@gmail.com",
      :subject => "User created an account"
    }
  end
end
