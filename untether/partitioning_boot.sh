#/bin/sh

echo "Run it only once!"

../build/ipwnder_lite -p
sleep 1

../build/irecovery -f image3/iBoot.n42
sleep 5

../build/irecovery -f image3/idsk
../build/irecovery -c "ramdisk"
sleep 1

../build/irecovery -f ../iphoneos-arm/iboot/payload_rd
../build/irecovery -c "go"
