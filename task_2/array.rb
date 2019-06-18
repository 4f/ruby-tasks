class Array

  def rebuild!
    return each unless block_given?
    collect! do |elements|
      if elements.is_a? Array
        size = elements.size
        elements.collect!{|el| yield el, size }
      else
        yield elements, 1
      end
    end
  end

end
