#!/bin/bash
# Anji Babu Kapakayala
# Senior SA, Schrodinger India.
# 31-1-2023.
# Get demo user password for given instance.
narg=$#
#echo "$narg"
#---------------------------------#
function get_password() {
ssh -X ${1}.${2} >null<<EOF
sudo grep demo ~seurat/LiveDesign/users.txt > tmpfile
EOF
#echo "Demo: $demo_password"
rm null
scp kapakaya@${1}.${2}:~/tmpfile . >&null&
password=`grep demo tmpfile|cut -d "=" -f2`
#
echo "Instance: ${1}.${2}"
echo "Demo: $password" 
echo
#
rm tmpfile
}
#---------------------------------#
case $narg in
	0) echo;echo "Arguments Expected !";;
	1) get_password ${1} onschrodinger.com
	   ;;
	2) get_password ${1} ${2}
 #          echo "Instance: ${1}.onschrodinger.com"
 #          echo "Demo: $password" 
	   ;;
	2) ssh $1.$2 ;;
	*) echo;echo " Invalid Arguments !";;
esac
#
#---------------------------------#
# Anji Babu Kapakayala
#---------------------------------#
