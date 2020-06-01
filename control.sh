export gobuster=False
export metasploit=False

export IP=$4
if [ $1 = -g ]
then
	export gobuster=True
elif [ $1 = -m ]
then
	export metasploit=True

fi
if [ $2 = -g ]
then
	export gobuster=True
elif [ $2 = -m ]
then
	export metasploit=True

fi

#script starts
nmap -sV -A $IP | tee nmap.txt
subl nmap.txt
nikto -h $IP | tee nikto.txt
subl nikto.txt
if [ $gobuster = True]
then
	
fi
elif [ $metasploit = True ]
then 
	msfconsole
