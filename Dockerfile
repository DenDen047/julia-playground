FROM nvidia/cuda:11.4.2-cudnn8-runtime-ubuntu20.04

RUN apt-get update && apt-get upgrade -y

# julia
RUN apt-get install -y python3-pip
RUN pip3 install jill -U
RUN echo "Y" | jill install 1.6.2
RUN apt-get install -y curl wget

RUN julia -e 'using Pkg; Pkg.add(["Pluto"])'
RUN julia -e 'using Pkg; Pkg.add(["Flux", "CUDA"])'