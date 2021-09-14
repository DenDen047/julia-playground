FROM julia:1.6.2

# Pluto
RUN julia -e 'using Pkg; Pkg.add(["Pluto"])'