@testset "arithmetic.jl" begin
    @testset "projection" begin
        for i in 1:5, j in 1:5, k in 1:5
            @test p1(i, j, k) == i
            @test p2(i, j, k) == j
            @test p3(i, j, k) == k
        end
    end
    @testset "addition" begin
        for i in 1:10, j in 1:10
            @test add(i, j) == i + j
        end
    end
    @testset "multi" begin
        for i in 1:10, j in 1:10
            @test mult(i, j) == i * j
        end
    end
    @testset "pred" begin
        for i in 1:10
            @test pred(i) == max(0, i - 1)
        end
    end
    @testset "cosub" begin
        for i in 1:10, j in rand(1:10, 10)
            @test cosub(i, j) == max(0, i - j)
        end
    end
    @testset "diff" begin
        for i in 1:10, j in rand(1:10, 10)
            @test dff(i, j) == abs(i - j)
        end
    end
    @testset "const1" begin
        for i in 1:10
            @test const1(i) == 1
        end
    end
    @testset "reminder" begin
        for i in 0:10, j in 1:5
            @test remainder(i, j) == i % j
        end
    end
    @testset "square" begin
        for i in 0:10
            @test square(i) == i ^ 2
        end
    end
    @testset "square_root" begin
        for i in 0:10
            @test floor_sqrt(i) == floor(Int, sqrt(i))
        end
    end
    @testset "traingle" begin
        for i in 1:10
            @test traingle(i) == binomial(i, 2) 
        end
    end
    @testset "pair" begin
        for i in 0:8, j in 0:8
            @test pair(i, j) == binomial(i + j + 1, 2) + i 
        end
    end
    @testset "inv-pair" begin
        for i in 0:6, j in 0:6-i
            @test fst(binomial(i + j + 1, 2) + i) == i
            @test scd(binomial(i + j + 1, 2) + i) == j 
        end
    end

    @testset "fib" begin
        fibs = [0, 1, 1, 2, 3, 5, 8]
        for i in 0:5
            @test fibs[i + 1] == fib(i)
        end
    end
end