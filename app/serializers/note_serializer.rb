class NoteSerializer < ActiveModel::Serializer
  attributes :id, :hive_name, :observation_date, :observe, :task, :task_due_date, :task_status
  has_one :user
end
