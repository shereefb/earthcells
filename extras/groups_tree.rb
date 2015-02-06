class GroupsTree
  include Enumerable

  def initialize(user)
    @user = user
  end

  def self.for_user(user)
    new(user)
  end

  def each(&block)
    list = []
    @user.top_level_groups.each do |group|
      list << @user.groups.where(id: group.subtree.map(&:id)).order(:created_at)
    end
    list.flatten.each do |group|
      yield group
    end
  end

end
