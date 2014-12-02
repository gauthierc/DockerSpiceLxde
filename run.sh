/usr/bin/Xorg -config /root/spiceqxl.xorg.conf :2 &
SPICE_USER=${SPICE_USER:-"user"}
SPICE_UID=${SPICE_UID:-"1000"}
SPICE_GID=${SPICE_GID:-"1000"}
useradd -ms /bin/bash -u $SPICE_UID $SPICE_USER
echo "$SPICE_USER:azerty" | chpasswd
su $SPICE_USER -c "DISPLAY=:2 /usr/bin/startlxde"
