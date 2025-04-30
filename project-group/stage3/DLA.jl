using Plots
using Random
using ColorSchemes

"""
    randomAtRadius(radius, seedX, seedY)

Генерирует случайную позицию на окружности с заданным радиусом вокруг центра (seedX, seedY).
"""
function randomAtRadius(radius, seedX, seedY)
    theta = 2π * rand() # случайный угол в радианах
    x = round(Int, radius * cos(theta)) + seedX
    y = round(Int, radius * sin(theta)) + seedY
    return [x, y]
end


"""
    performRandomWalk(location, squareSize)

Выполняет один шаг случайного блуждания для частицы.
"""
function performRandomWalk(location, squareSize)
    x, y = location
    step = rand((-1, 0, 1), 2)
    new_x = clamp(x + step[1], 1, squareSize)  # Ограничиваем границами
    new_y = clamp(y + step[2], 1, squareSize)
    return [new_x, new_y]
end
"""
    growDLAcluster(radius, maxParticles)

Выращивает DLA кластер с заданным начальным радиусом и максимальным числом частиц.
"""
function growDLAcluster(radius, maxParticles)
    squareSize = radius * 2 + 5
    matrix = zeros(Int, squareSize, squareSize)
    center = squareSize ÷ 2
    matrix[center, center] = 1
    randomWalkersCount = 0
    maxAttempts = 10_000
    cluster_radius = 1

    while randomWalkersCount < maxParticles
        location = randomAtRadius(cluster_radius + 5, center, center)
        attempts = 0

        while attempts < maxAttempts
            location = performRandomWalk(location, squareSize)
            x, y = location

            # Проверка соседей (4-связность)
            if (x > 1 && matrix[x-1, y] == 1) || (x < squareSize && matrix[x+1, y] == 1) ||
               (y > 1 && matrix[x, y-1] == 1) || (y < squareSize && matrix[x, y+1] == 1)
                matrix[x, y] = 1
                randomWalkersCount += 1
                cluster_radius = max(cluster_radius, sqrt((x-center)^2 + (y-center)^2))
                break
            end
            attempts += 1
        end
    end
    return matrix
end


radius = 50
maxParticles = 1000

@time matrix = growDLAcluster(radius, maxParticles)

heatmap(matrix, 
    title="DLA Cluster ($maxParticles particles)", 
    xlabel="X direction", 
    ylabel="Y direction",
    seriescolor=cgrad(ColorSchemes.viridis, rev=true),
    aspect_ratio=:equal,
    size=(800, 800),
    dpi=300
)
