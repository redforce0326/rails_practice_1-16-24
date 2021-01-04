class Plan < ApplicationRecord
  def set_date_1
    start_time.strftime("%Y年%m月%d日%H時%M分")
  end
  def set_date_2
    end_time.strftime("%Y年%m月%d日%H時%M分")
  end
end
