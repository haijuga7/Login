read -p "Apakah Kamu Ingin Menggunakan Tampilan Ini (y/n) ? " ardi

if [ $ardi == 'y' ] || [ $ardi == 'Y' ]
then
	echo "Tunggu Sebentar"
	cd ..
	mv -fin Login $HOME
	cd $HOME
	cd Login
	pkg install python2 -y &> /dev/null
	mv -fin $HOME/../usr/etc/bash.bashrc /sdcard/Android &> /dev/null
	mv -fin bash.bashrc $HOME/../usr/etc &> /dev/null
	echo "Selesai"
	echo "Tampilan Awal Kamu Disimpan Di /sdcard/Android"

elif [ $ardi == 'n' ] || [ $ardi == 'N' ]
then
	echo "Keluar"
	exit
else
	echo "Failed"
	exit
fi
