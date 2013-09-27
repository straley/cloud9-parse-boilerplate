#!/bin/bash

cp ~/.bashrc.bak ~/.bashrc
echo ""
echo ""
echo "######################################################################"
echo "# Linking Production App"
echo "######################################################################"
./parse new .
echo ""
echo ""
echo "######################################################################"
echo "# Linking Development App"
echo "######################################################################"

read -p "What is the name of your Development App?" DEVAPP
./parse add $DEVAPP

echo -e "#!/bin/bash\n\n./parse develop $DEVAPP >.develop-log.txt 2>&1 &\necho 'Running Dev For $DEVAPP To .develop-log.txt'\n" > devel.sh
chmod 755 devel.sh

echo "Run ./devel.sh to start Development App"
