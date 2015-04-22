class OrderExpirationCheckerJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts "Doing the thing!!!!!!!!!!!!"
    Order.where(status: :unassigned).each do |order|
      if order.created_at + order.expiration.minutes >= Time.now
        order.status = "expired"
        order.save
      end
    end

    # Repeat every minute
    self.class.set(wait: 1.minute).perform_later
  end
end
