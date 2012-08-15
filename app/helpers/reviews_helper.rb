module ReviewsHelper

  def rating_options_for_select
    (1..5).map {|n| [n,n] }
  end

end
