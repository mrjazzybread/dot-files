while ! [ -f "dune-project" ] && ! [ $(pwd) = "/" ]
do
    cd ..
done
if [ $(pwd) = "/" ]; then
    echo "No dune project found"
else
   echo "Entering directory '$(pwd)'"
   dune build && dune install
fi
