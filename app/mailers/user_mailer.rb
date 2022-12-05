class UserMailer < ApplicationMailer
   default from:'oldschoolgaming@grosgeek.fr'

   def welcome_email
      @user = params[:user]
      @url = 'https://example.com/login'
      mail(to: @user.email, subject: 'Bienvenue sur ton site rétro favoris')
   end
end
