#!/bin/bash

function help()
{
filehelp='/etc/help.txt'
n=1
while read line; do
# reading each line
echo "$line"
n=$((n+1))
done < $filehelp


}
function p_func()
{

# pydf
if [ -f /usr/bin/pydf ]; then
    # to install pydf: apt-get install pydf
   pydf
else
  #sudo /bin/df -hP | column -t
  echo"install pydf: apt-get install pydf"
fi

}
function d_func()
{
sudo fdisk -l
}
function s_func()
{

file="$1";
dest='/home/eya/'
#echo "when you're done saving information please write 'exit'"	
#script $file.txt
p_func | tee -a>> $dest$file.txt
d_func | tee -a>> $dest$file.txt
echo "check your  file on '$dest'"


}
function v_func()
{

echo -e "version : \n"
lsb_release -a
echo -e "\n"
echo  -e "les auteurs : \n"
	w
echo -e "\n"
	timestamp() {
    date +"%T" # current time
    }
    echo -n "Application version 0.5 "
    echo -e "\n"
    echo -n " Kernel "
    echo -e "\n"
    uname -r 
    echo -e "\n"
    echo  -n "zeineb eya rahmani "
    echo -e "\n"
    echo  -n "mariem ben massoud"
    echo -e "\n"
    timestamp
}
function o_func()
{


filename="$1"
dest='/home/eya/'

if [ -f "$dest$filename".txt ]; then
#cat $dest$filename.txt
n=1
while read line; do
# reading each line
echo "$line"
n=$((n+1))
done < $dest$filename.txt
else echo "ERROR: file does not exist"
fi

}

function f_func()
{
keyword="$1"
dest='/home/eya/'
#grep "$keyword" $dest$filename.txt
#grep -r $keyword 
grep -rn --include=*.txt $keyword $dest

}


function g_func()
{


HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Menu Graphique"
TITLE="Menu Graphique"
MENU="Choose one of the following options:"

OPTIONS=(1 "lancer Pydf"
         2 "lancer fdisk"
         3 "help"
         4 "afficher un menu graphique"
         5 "afficher un menu textuel"
         6 "sauvegarder les informations les plus pertinentes"
         7 "affiche la verion et les noms des auteurs"
         8 "afficher les informations les plus pertinentes dans un fichier passé en argument"
         9 "afficher les lignes contenant le MOT_CLE à partir d’ un fichier.")


CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            p_func
            ;;
        2)
            d_func
            ;;
        3)
            help
            ;;
        4)
            g_func
            ;;
        5)
            m_func
            ;;
        6)
            s_func
            ;;
        7)
            v_func
            ;;
        8)
            o_func
            ;;
        9)
            f_func 
            ;;
            
esac
}
function m_func()
{

echo "Votre choix : "

select item in "- lancer Pydf -" "- lancer fdisk -" "- HELP -" "- afficher un menu graphique -" "- afficher un menu textuel -" "- sauvegarder les informations les plus pertinentes -" "- affiche la verion et les noms des auteurs -" "- afficher les informations les plus pertinentes dans un fichier -" "- afficher les lignes contenant le MOT_CLE à partir d’ un fichier. -" "- Fin -" 
do
    for var in $REPLY; do
        echo "Vous avez choisi l'item $var : $item"
        case $var in
                1)p_func;;
                2)d_func;;
		3)help;;
                4)g_func;;
                5)m_func;;
                6)s_func;;
                7)v_func;;
                8)o_func;;
                9) f_func ;;
                10)echo "Fin du script"
                        exit 0;;
                *)echo "Choix incorrect";;
        esac
    done
done
}

