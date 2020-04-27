json.extract! game, :id, :name, :distribution, :type, :description, :price, :created_at, :updated_at
json.url game_url(game, format: :json)
