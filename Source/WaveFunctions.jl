__precompile__()

module WaveFunctions
using Match
using PlotlyJS

const sample_points = 64

export psi

function r(X,Y,Z)
    return sqrt(X.^2 + Y.^2 + Z.^2)
end

function f100()
    #1s(1,0,0)
    data_range = (-3.5,3.5)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    c_sym = (-0.1, 0.1)
    values = (1/pi^2).*exp.(-R)
    return values, c_sym, (X,Y,Z)
end

function f200()
    #2s(2,0,0)
    data_range = (-7,7)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    c_sym = (-0.2, 0.2)
    values = ((1)/(4*(2*pi)^0.5)).*(2 .- R).*exp.(-R./2)
    return values, c_sym, (X,Y,Z)
end

function f21_1()
    #2py(2,1,-1)
    data_range = (-7,7)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((1)/(4*(2*pi)^0.5)).*Y.*exp.(-R./2)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f210()
    #2pz(2,1,0)
    data_range = (-7,7)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((1)/(4*(2*pi)^0.5)).*Z.*exp.(-R./2)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f211()
    #2px(2,1,1)
    data_range = (-7,7)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((1)/(4*(2*pi)^0.5)).*X.*exp.(-R./2)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f300()
    #3s(3,0,0)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    c_sym = (-0.06, 0.06)
    values = ((1)/(81*(3*pi)^0.5)).*(27 .-18 .*R+2 .*R.^2).*exp.(-R./3)
    return values, c_sym, (X,Y,Z)
end

function f31_1()
    #3py(3,1,-1)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((2^0.5)/(81*(pi)^0.5)).*(6 .-R).*Y.*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f310()
    #3pz(3,1,0)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((2^0.5)/(81*(pi)^0.5)).*(6 .-R).*Z.*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f311()
    #3px(3,1,1)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((2^0.5)/(81*(pi)^0.5)).*(6 .-R).*X.*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f32_2()
    #3dxy(3,2,-2)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((1)/(81*(2*pi)^0.5)).*X.*Y.*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f32_1()
    #3dyz(3,2,-1)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((2^0.5)/(81*(pi)^0.5)).*Y.*Z.*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f320()
    #3dZ2(3,2,0)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    c_sym = (-0.025, 0.025)
    values = ((1)/(81*(6*pi)^0.5)).*(2 .*Z.^2-X.^2-Y.^2).*exp.(-R./3)
    return values, c_sym, (X,Y,Z)
end

function f321()
    #3dxz(3,2,1)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((2^0.5)/(81*(pi)^0.5)).*X.*Z.*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f322()
    #3dx2-y2(3,2,2)
    data_range = (-20,20)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((1)/(81*(2*pi)^0.5)).*(X.^2-Y.^2).*exp.(-R./3)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f400()
    #4s(4,0,0)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    c_sym = (-0.15, 0.15)
    values = ((1)/(192*(2*pi)^0.5)).*(192 .-144 .*R+24 .*R.^2 -R.^3).*exp.(-R./4)
    return values, c_sym, (X,Y,Z)
end

function f41_1()
    #4py(4,1,-1)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((3)/(64*(30*pi)^0.5)).*(80 .-20 .*R+R.^2).*Y.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f410()
    #4pz(4,1,0)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((3)/(64*(30*pi)^0.5)).*(80 .-20 .*R+R.^2).*Z.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f411()
    #4px(4,1,1)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((3)/(64*(30*pi)^0.5)).*(80 .-20 .*R+R.^2).*X.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f42_2()
    #4dxy(4,2,-2)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((5)/(128*(30*pi)^0.5)).*(12 .-R).*X.*Y.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f42_1()
    #4dyz(4,2,-1)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((5)/(64*(30*pi)^0.5)).*(12 .-R).*Y.*Z.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f420()
    #4dZ2(4,2,0)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    c_sym = (-0.23, 0.23)
    values = ((5)/(384*(10*pi)^0.5)).*(12 .-R).*(2 .*Z.^2-X.^2-Y.^2).*exp.(-R./4)
    return values, c_sym, (X,Y,Z)
end

function f421()
    #4dxz(4,2,1)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((5)/(64*(30*pi)^0.5)).*(12 .-R).*X.*Z.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f422()
    #4dx2-y2(4,2,2)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((5)/(128*(30*pi)^0.5)).*(12 .-R).*(X.^2-Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f43_3()
    #4fy(3x2-y2)(4,3,-3)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = (7^0.5/(768*(pi)^0.5)).*Y.*(3 .*X.^2-Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f43_2()
    #4fxyz(4,3,-2)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((7)/(64*(42*pi)^0.5)).*X.*Y.*Z.*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f43_1()
    #4fyz2(4,3,-1)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((7)/(256*(105*pi)^0.5)).*Y.*(4 .*Z.^2-X.^2-Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f430()
    #4fz3(4,3,0)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((7)/(384*(70*pi)^0.5)).*Z.*(2 .*Z.^2-3 .*X.^2-3 .*Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f431()
    #4fxz2(4,3,1)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((7)/(256*(105*pi)^0.5)).*X.*(4 .*Z.^2-X.^2-Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f432()
    #4fz(x2-y2)(4,3,2)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = ((7)/(64*(42*pi)^0.5)).*Z.*(X.^2-Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function f433()
    #4fX(x2-3y2)(4,3,3)
    data_range = (-32,32)
    data = range(data_range[1], data_range[2], length=sample_points)
    X, Y, Z = mgrid(data, data, data)
    R = r.(X,Y,Z)
    values = (7^0.5/(768*(pi)^0.5)).*X.*(X.^2-3 .*Y.^2).*exp.(-R./4)
    c_sym = (minimum(values), maximum(values))
    return values, c_sym, (X,Y,Z)
end

function psi(quant_numbs)
    @match quant_numbs begin
        "100" => f100()
        "200" => f200()
        "21_1" => f21_1()
        "210" => f210()
        "211" => f211()
        "300" => f300()
        "31_1" => f31_1()
        "310" => f310()
        "311" => f311()
        "32_2" => f32_2()
        "32_1" => f32_1()
        "320" => f320()
        "321" => f321()
        "322" => f322()
        "400" => f400()
        "41_1" => f41_1()
        "410" => f410()
        "411" => f411()
        "42_2" => f42_2()
        "42_1" => f42_1()
        "420" => f420()
        "421" => f421()
        "422" => f422()
        "43_3" => f43_2()
        "43_2" => f43_2()
        "43_1" => f43_1()
        "430" => f430()
        "431" => f431()
        "432" => f432()
        "433" => f433()
    end

end
end