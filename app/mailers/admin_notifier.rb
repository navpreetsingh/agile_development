class AdminNotifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.error_occured.subject
  #
  def error_occured(error)
    @error = error

    mail to: "navpreet.singh.k@gmail.com", :subject => "Error incident"
  end
end
