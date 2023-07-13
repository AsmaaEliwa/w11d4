json.extract! @pokemon, :id, :number, :attack, :defense, :name, :captured, :created_at, :updated_at
json.type @pokemon.poke_type

moves = []
@pokemon.moves.each do |move|
    moves.push(move.name)
end 

json.moves moves
