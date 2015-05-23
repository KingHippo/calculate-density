population_array = Array.new
housing_array = Array.new

def population_density(pop, area)
    pop_density = pop/area
    return pop_density
    population_array << pop_density
end

def housing_density(units, land)
    house_density = units/land
    return house_density
    housing_array << housing_density
end

def dense_sparce
    density = 0
    sparsity = 99999999

    population_array.each do |stats|
        if stats > density || sparsity < stats
            density = stats
            sparsity = stats
        end
    end

    housing_array.each do |stats|
        if stats > density || sparsity < stats
            density = stats
            sparsity = stats
        end
    end

end

population_density(3497, 192938)

housing_density(1450, 4271)

dense_sparce