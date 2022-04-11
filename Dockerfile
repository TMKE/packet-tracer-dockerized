FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends libqt5webkit5 libqt5multimediawidgets5 libqt5script5 libqt5sql5 libqt5scripttools5 libqt5svg5 libssl1.0.0 ca-certificates apt-utils libicu55 wget libpng12-0 && \
wget https://ia601209.us.archive.org/34/items/PTL63.tar/PTL63.tar.gz -O /root/pt.tar.gz && \
mkdir -p /opt/pt && \
tar zxvf /root/pt.tar.gz -C /opt/pt --strip 1 && \
sed 's/III/\/opt\/pt/' /opt/pt/tpl.packettracer > /opt/pt/packettracer && \
sed 's/III/\/opt\/pt/' /opt/pt/tpl.linguist > /opt/pt/linguist && \
chmod +x /opt/pt/linguist /opt/pt/packettracer && \
rm -f /root/pt.tar.gz && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /opt/pt/packettracer
