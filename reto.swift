

//reto kodemia
var  nrows = 3
var  ncols = 3
var  matriz = [[Int]](repeating: [Int](repeating: 0, count: ncols), count: nrows)
var  diagonalAscendente = 0
var  diagonalDescendente = 0
var  x = 0

matriz[0][0] = 1
matriz[0][1] = 2
matriz[0][2] = -1
matriz[1][0] = 6
matriz[1][1] = 5
matriz[1][2] = 4
matriz[2][0] = -9
matriz[2][1] = 8
matriz[2][2] = 9

for i in 0...nrows-1 {
    for j in 0...ncols-1 {
        if i == j {
            diagonalAscendente += matriz[i][j]
        }
        if i + j == nrows - 1 {
            diagonalDescendente += matriz[i][j]
        }
    }
}

x = abs(diagonalAscendente - diagonalDescendente)

print(x)
