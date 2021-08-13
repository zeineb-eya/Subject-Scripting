# Subject-Scripting

Sujet 5:

Création d’un application shell permettant de :

• Afficher les caractéristiques hardware de votre machine via les
commandes Pydf et fdisk

◦ l’option -p pour lancer la commande Pydf

◦ l’option -d pour lancer la commande fdisk

◦ ll’option -h ou –help pour afficher le help à partir d’un fichier texte
contenant la description de l’application et ses options (le fichier doit
etre dans repertoire /etc )

◦ l’option -g pour afficher un menu graphique (exemple via YAD )

◦ l’option -m pour afficher un menu textuel (menu en boucle)

◦ l’option -s FICHIER pour sauvegarder les informations les plus
pertinentes (en filtrant) dans un fichier passé en argument

◦ l’option -v affiche la verion et les noms des auteurs

◦ l’option -o FICHIER pour afficher les informations les plus pertinentes
dans un fichier passé en argument (si le fichier n’existe pas un
message d’erreur doit etre affiché)

◦ l’option -f MOT_CLE pour afficher les lignes contenant le MOT_CLE à
partir d’ un fichier. Cette option doit etre utilisé avec l’option -o

• Afficher un message d’erreur si aucun argument n’est passé au script

• L’application doit etre installé dans le repertoire /usr/bin
