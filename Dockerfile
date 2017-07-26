FROM asuforce/puppet

RUN apt-get update \
  && apt-get -yqq install puppetserver=5.0.0-1puppetlabs1 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY puppetserver /etc/default/puppetserver
RUN puppet config set autosign true --section master
