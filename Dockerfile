FROM linuxserver/code-server:version-v3.11.1

# declare environment variable
ENV PASSWORD ilovedata
ENV SUDO_PASSWORD ilovedata

# prepare dependencies files
COPY config/*.txt /tmp

# install system dependencies
RUN apt-get update \
 && xargs apt-get install --yes --quiet --no-install-recommends < /tmp/build-packages.txt \
 && xargs apt-get install --yes --quiet --no-install-recommends < /tmp/packages.txt \
 # install code-server extensions
 && code-server --extensions-dir /config/extensions --install-extension "ms-python.python" \
 && code-server --extensions-dir /config/extensions --install-extension "alexcvzz.vscode-sqlite" \
 && code-server --extensions-dir /config/extensions --install-extension "mechatroner.rainbow-csv" \
 # install python dependencies
 && pip3 install --no-cache-dir -r /tmp/requirements.txt \
 # clean up
 && xargs apt-get --yes --purge --auto-remove remove < /tmp/build-packages.txt \
 && apt-get clean \
 && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

 # install code-server config
COPY config/settings.json /config/data/User/settings.json

# install the interview
COPY interview/ /config/workspace
COPY README.md /config/workspace
