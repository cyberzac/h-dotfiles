# Functions to help us manage paths.  Second argument is the name of the
# path variable to be modified (default: path)

pathremove () {
    for (( i=1 ; i <= $#path ; i++ )) do
       if [[ $path[i] == "$1" ]] then 
	   path[i]=() 
       fi
    done 
}

pathprepend () {
    pathremove $1
    path=($1 $path)
}

pathappend () {
    pathremove $1
    path+=($1)
}
