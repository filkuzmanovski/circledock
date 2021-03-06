# Install Java
RUN apt-get install -y default-jre

# Install node 6.x
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get update
RUN apt-get install -y google-chrome-stable

# Install Firefox
RUN apt-get purge -y firefox
RUN wget https://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt/pool/main/f/firefox-mozilla-build/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb
RUN dpkg -i firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb

# Install Xvfb
RUN apt-get install -y xvfb

CMD ['echo', 'Done!']
