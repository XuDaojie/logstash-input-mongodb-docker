# FROM logstash:7.4.1
# RUN echo '<h1>Hello, Docker!</h1>' > /usr/share/logstash/pipeline/index.html
# # RUN mkdir /data && touch /data/test.txt
# # RUN chown -R nick:nick /data
# RUN touch /usr/share/logstash/pipeline/test.txt
# VOLUME [ "/usr/share/logstash/pipeline" ]
# CMD touch /usr/share/logstash/pipeline/test.txt && /bin/bash

FROM logstash:7.4.1
# COPY resources /usr/share/logstash/resources-dockerfile
RUN logstash-plugin install logstash-input-mongodb