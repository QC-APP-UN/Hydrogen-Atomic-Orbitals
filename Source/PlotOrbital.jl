__precompile__()
module PlotOrbital
include("./WaveFunctions.jl")
using Main.WaveFunctions
using PlotlyJS
using PlotlyBase

values, c_sym, coord = psi("311")

X,Y,Z = coord

p = Plot(volume(

    x=X[:],

    y=Y[:],

    z=Z[:],

    value=values[:],

    opacity=0.1, 

    surface_count=21,

    autocolorscale = false,

    #colorscale= "[[0, 'rgb(0,0,0)'], [1, 'rgb(255,255,0)']]",#"RdBu", 

    cmin = c_sym[1],
    cmid = 0,
    cmax = c_sym[2]

))
open("f.html","w") do f
    PlotlyJS.PlotlyBase.to_html(f, p; include_plotlyjs="cdn", full_html=true)
end
end