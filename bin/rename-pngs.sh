#/bin/bash

X=0
for f in $1; do
  echo "Renaming:" $f
  fileName=$(printf %04d.%s ${X%.*} ${f##*.})
  fileName=${fileName:0:4}
  let X="$X+1"

  mv $f $2$fileName".png"
done

