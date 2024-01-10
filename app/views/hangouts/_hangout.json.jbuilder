json.extract! hangout, :id, :title, :description, :date, :time, :archive, :user_id, :created_at, :updated_at
json.url hangout_url(hangout, format: :json)
