FROM asuforce/puppet

RUN apt update \
  && apt install -y puppetserver=5.0.0-1puppetlabs1 \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

COPY puppetserver /etc/default/puppetserver
RUN puppet config set autosign true --section master
