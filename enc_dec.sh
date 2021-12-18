#!/bin/bash
function main() {
echo ""
echo "1. Encode"
echo "2. Decode"

read -p "Encoding or Decoding: (1/2)" e_d
if [ $e_d = "1" ];
then 
	echo "##############File encoding##############"
	enc
elif [ $e_d = "2" ];
then
	echo "##############File decoding##############"
	dec
else	
	echo "##############Invalid type###############"
	exit
fi
}

function enc() {

	read -p "pleas type file path for encript: " e_f_path
	read -p "pleas type encripted file saved path: " save_enc_file_path
	base64 $e_f_path > $save_enc_file_path
	echo "Process finished, file saved $save_enc_file_path"
}

function dec() {
	read -p "pleas type encripted file path for decript: " d_f_path
	read -p "pleas type decriptes file saved path: " save_dec_file_path
	base64 -d $d_f_path > $save_dec_file_path
	echo "Decoding finished, file saved $save_dec_file_path"
}

main
