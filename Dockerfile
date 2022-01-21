FROM alvisisme/ubuntu:20.04

RUN　apt-get update \
  && apt-get -y install wget \
  && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
  && dpkg -i packages-microsoft-prod.deb \
  && rm packages-microsoft-prod.deb \
  && apt-get update \
  && apt-get install -y apt-transport-https dotnet-sdk-6.0 dotnet-runtime-6.0 \
  && apt-get autoremove \
  && apt-get autoclean
