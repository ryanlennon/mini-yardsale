class Product < ActiveRecord::Base
  has_many :orders
  belongs_to :user




  SALES_TAX = 0.09
  DISCOUNT_THRESHOLD = 50

  def sale_message
    if price < 100
      "On Sale!"
    else
      "Discount Item!"
    end
  end

  def tax
    price * SALES_TAX
  end

  def total
    price + tax
  end

end
