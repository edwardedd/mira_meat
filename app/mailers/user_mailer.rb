class UserMailer < ApplicationMailer
  default from: ENV["smtp_gmail_user_name"]

 def consultation_email(consultation)
   @consultation = consultation
   mail(to: "viktor.o@voroninstudio.eu", subject: 'Заявка на консультацію')
 end

 def order_email(order)
   @order = order
   mail(to: "viktor.o@voroninstudio.eu", subject: 'Заявка на замовлення')
 end
 def vacancyform_email(vacancy_form)
   @cv = vacancy_form
   mail(to: "viktor.o@voroninstudio.eu", subject: 'Нова вакансія на #{@cv.vacancy_name}')
 end
end
