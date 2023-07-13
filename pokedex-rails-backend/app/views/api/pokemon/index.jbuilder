@pokemons.each do |pokemon|
    json.set! pokemon.id do
        if pokemon.captured 
            json.extract! pokemon, :id, :number, :image_url, :name, :captured
        else
            pokemon.image_url = "/images/unknown.png"
            json.extract! pokemon, :id, :number, :image_url, :name, :captured
        end 
    end 
end 
