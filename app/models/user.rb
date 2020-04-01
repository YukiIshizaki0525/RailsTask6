class User < ApplicationRecord
  attr_accessor :search_name, :search_age

  def search
    # ransackのgemをインストールすることでransack,resultメソッド利用可能
    # _eqは完全一致したもの、_contは部分一致したものを検索
    User.ransack(name_cont: @search_name, age_eq: @search_age).result
  end
end
