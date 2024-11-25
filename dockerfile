FROM python:3.12
RUN apt-get update && apt-get upgrade -y
RUN apt install git neovim curl zsh -y
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
RUN chsh -s $(which zsh)
# Install here dependencies

ENV APPHOME=/usr/src/app/
WORKDIR $APPHOME
ENV PYTHONUNBUFFERED 1
COPY . $APPHOME

RUN pip install -r requirements.txt

# docker network create rng
# docker network connect rng rng-py
# Connect nerwork if you need it
# docker network connect rng rng
# docker start rng-py
# docker rm -f rng-py && docker image rm rng-web && docker compose up -d
