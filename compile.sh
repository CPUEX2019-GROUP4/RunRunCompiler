stack build

if [ $1 != "raytrace" ]; then
  testfile="test/test"
  filename=test/$1
  cat src/library.ml        > $testfile.ml
  cat $filename.ml         >> $testfile.ml
else
  filename=test/raytrace
  testfile=raytracer/galois
fi

stack exec min-caml $testfile.ml
sed -e ':a' -e 'N' -e '$!ba' -e 's/    j block_\([0-9]*\)\nblock_\1:/block_\1:/g' $testfile.s > $filename.s


# find . -type f -name "*hs" -not -path '.git' -not -path '*.stack-work*' -print0 | xargs -0 stylish-haskell -i
