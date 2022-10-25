fswatch -e ".*" -i ".*/[^.]*\\.md$" -xn docs | while read file event; do 
   foo=${file#"`pwd`"}
   NAME=`echo "backlinks$foo" | cut -d'.' -f1`
   # echo $file $event $NAME
   for p in `cat $NAME`
   do 
      touch $p.qmd #echo "\tINCLUDED BY $p"
   done
done
