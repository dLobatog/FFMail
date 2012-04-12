## FFMail

This gem was built on top of `ActiveModel` to showcase how you can pull in validations, naming
and `i18n` from Rails to your models without the need to implement it all by yourself. It is based on mailform by plataformatec by Jose Valim, one of the main contributors for Rails

### Description

**FFMail** is a simple way to include a contact form in your Rails website.

```ruby
class ContactForm < FFmail::Base
  attributes :name, :email, :message
  
  # Declare the e-mail headers, inherits from ActionMailer. 
  def headers
    {
      :to => "Your email goes here",
      :from => %("#{name}" <#{email}>)
    }
  end
end
```

If you want to check out how it works, just open a ruby console and type in:

```ruby
c = ContactForm.new(:name => 'Name', :email => "sender's email", :message => 'A message')
c.deliver
```

## Installation

To install this gem, add the following line to your Gemfile:

```ruby
gem 'rrpdf', :git => git://github.com/eLobato/RRPDF.git
```

## I18n

FFMail includes I18n behavior extended from ActiveRecord.

## Spam protection

Include a 'nickname' field in your forms and hide it with CSS. Users won't fill it
but some bots will and it won't send the email if it's filled

## Thanks

Thanks to Jose Valim for writing Crafting Rails Applications, an outstanding book that 
explains extremely well how to work with Rails 3 API and thus allowed me to write this.



