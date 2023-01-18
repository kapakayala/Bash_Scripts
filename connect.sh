# Anji Babu Kapakayala
# Senior SA, Schrodinger India.
# 01-12-2022.
# 
#!/bin/bash

narg=$#
#echo "$narg"

case $narg in
	0) echo;echo "Arguments Expected !";;
	1) ssh $1.onschrodinger.com ;;
	2) ssh $1.$2 ;;
	*) echo;echo " ERROR: Morethan 2 Arguments !";;
esac
#
