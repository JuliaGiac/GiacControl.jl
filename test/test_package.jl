@testitem "GiacControl loads" begin
    @test isdefined(GiacControl, :Giac)
end

@testitem "Aqua" begin
    using Aqua
    Aqua.test_all(GiacControl)
end
