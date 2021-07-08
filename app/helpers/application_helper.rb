module ApplicationHelper
  def count
    @count = Task.count
  end
    
end
