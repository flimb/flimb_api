module FlimbApi
  class Alert < Base;
    belongs_to :website, class_name: 'flimb_api/alert'
  end
end
