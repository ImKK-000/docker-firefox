# docker system prune -f && docker build -t anonyfz/docker-firefox .
# docker run -it --rm -e DISPLAY=$DISPLAY --net=host anonyfz/docker-firefox

FROM ubuntu:artful

ENV USER tux-mux
ENV HOME /home/$USER

RUN apt update && apt -y upgrade
RUN apt install -y firefox \
  fonts-thai-tlwg
RUN useradd -m -d /home/$USER -s /bin/bash $USER

CMD /usr/bin/firefox
