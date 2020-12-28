##Variables##
clear
var_python3_output_version=$(python3 --version);
var_pip3_output_version=$(pip3 --version);
clear

##Terminal Title##
echo -en "\033]0;Installer\a"

##Updating repositories to the last version##
echo "Checking dependencies..."
sudo apt update > /dev/null 2>&1
sudo add-apt-repository universe > /dev/null 2>&1
sudo add-apt-repository multiverse > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt-get install python3 > /dev/null 2>&1
sudo apt-get install python3-pip > /dev/null 2>&1

##Log File Creation##
echo "Python3 installed version >> $var_python3_output_version" >> VERSION_OUTPUT.txt
echo "Pip3 installed version >> $var_pip3_output_version" >> VERSION_OUTPUT.txt

##Executing the script##
python3 Email_Bomber.py 