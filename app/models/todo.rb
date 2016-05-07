class Todo
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :completed_at, type: Time

  belongs_to :user
  paginates_per 10

  def completed?
    completed_at?
    #self.completed_at.present?
  end

  def complete!
    touch :completed_at
  end
  def mark_incomplete!
    self.completed_at= nil
    save
    #update_column :completed_at, nil
  end

end
