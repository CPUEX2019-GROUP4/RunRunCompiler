cat src/library.ml  > test/test.ml
cat test/$1.ml     >> test/test.ml
stack build
stack exec min-caml test/test.ml
sed -e ':a' -e 'N' -e '$!ba' -e 's/    j block_\([0-9]*\)\nblock_\1:/block_\1:/g' test/test.s > test/$1.s
