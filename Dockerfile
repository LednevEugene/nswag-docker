FROM mcr.microsoft.com/dotnet/core/runtime:2.2.5 as pre-install
RUN apt-get update
RUN apt-get update -yq && apt-get upgrade -yq && apt-get install -yq curl git nano
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -yq nodejs build-essential
RUN npm install -g npm
RUN npm i nswag -g
CMD ["npm"]