FROM selenium/standalone-firefox:4.11.0-20230801

WORKDIR /app

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install python3-pip -y
RUN sudo apt-get install screen -y

RUN sudo mkdir downloads
RUN sudo chown seluser:seluser downloads
COPY bot.py .
COPY reel_scrape.py .
COPY Ublock.xpi .

RUN pip3 install python-telegram-bot==20.3
RUN pip3 install selenium==4.10.0
RUN pip3 install webdriver_manager==3.8.6