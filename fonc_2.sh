cd
hello() {
find -name "*.$1" 2>/dev/null;
}
read -p "donner extension: " a
c=$(hello $a)
if [ "$c" != "" ] ; then
	b=$(hello $a|wc -l)
	echo "vous avez $b fichier de cette extension"
else
	echo "les fichier n'existe pas"
fi
