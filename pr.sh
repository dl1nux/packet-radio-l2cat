# pr.sh öffnet ein Packet Radio Terminal über AXUDP zu DB0FHN
# Voraussetzung: Es besteht im aktuellen Netzwerk Zugriff auf das HAMNET.
#                Internetzugriff reicht nicht aus!
# Bitte das eigene Call als Parameter zum Aufruf angeben. SSID ist möglich.
# Beispiel:  ./pr.sh MY1CAL-5
# Mehr Infos hier: http://dxlwiki.dl1nux.de/index.php?title=L2cat
if [ -z $1 ]; then
        echo "Bitte eigenes Rufzeichen als Option angeben!"
        echo "Beispiel:  ./pr.sh MY1CAL-5"
        exit 1
fi

./l2cat -i $1 -U 44.130.60.100:93:0 -v -l -j 2 -n a n 40 -n a f 80 -n a F 150 -C DB0FHN
