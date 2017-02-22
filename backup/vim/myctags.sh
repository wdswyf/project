
find . -name "*.c" -o -name "*.h" -o -name "*.hh" -o -name "*.cpp" > cscope.files
cscope -bkq -i cscope.files
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q

