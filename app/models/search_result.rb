class SearchResult
  include ActiveModel::Serialization

  attr_accessor :result
  def initialize(result, query, priority)
    @result = result
    @priority = priority
    @query = query
  end

  def read_attribute_for_serialization(field)
    attributes[field]
  end

  def attributes
    {
      query: @query,
      result: @result,
      priority: @priority
    }
  end

end
