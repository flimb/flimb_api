module FlimbApi
  class Scan < Base
    has_many :alerts, class_name: 'flimb_api/alert'
  end
end
