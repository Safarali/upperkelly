module HousesHelper

  def price_conver(price)
    str_pr = price.to_s

    if str_pr.length == 6
      "$ #{str_pr[0..2]},#{str_pr[3..5]}"
    elsif str_pr.length == 7
      "$ #{str_pr[0]},#{str_pr[1..3]},#{str_pr[4..6]}"
    end
  end
end
