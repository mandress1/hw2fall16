class CartesianProduct
  include Enumerable

  def initialize(arr1, arr2)
    @prod_arr = []

    arr1.each do |el_1|
      arr2.each do |el_2|
        @prod_arr.push([el_1, el_2])
      end
    end

    @prod_arr
  end

  def each
    @prod_arr.each do |el|
      yield el
    end
  end

end
