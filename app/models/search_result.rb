class SearchResult
  include ActiveModel::Serialization

  attr_accessor :discussion, :motion
  def initialize(obj, query, priority)
    set_result_for(obj)
    @priority = priority
    @query = query
  end

  def read_attribute_for_serialization(field)
    attributes[field]
  end

  def attributes
    {
      query: @query,
      discussion: @discussion,
      motion: @motion,
      priority: @priority
    }
  end

  def set_result_for(obj)
    case obj
    when Discussion then
      self.discussion = obj
    when Motion     then
      self.discussion = obj.discussion
      self.motion = obj
    end
  end

end