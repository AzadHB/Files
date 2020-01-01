alias cstags="file.sh > ctags.txt;ctags -L ctags.txt --c++-kinds=+px --fields=+iaKSz --extra=+q;cscope -bkq -i ctags.txt"
