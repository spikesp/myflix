class StripeWrapper
  class Charge
    def self.create(options={})
      Stripe::Charge.create(
        amount: options[:amount],
        currency: 'jpy',
        card: options[:card],
        descriprion: options[:descriprion]
        )
    end
  end
end