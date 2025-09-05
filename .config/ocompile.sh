while ! [ -f "dune-project" ] && ! [ $(pwd) = "/" ]
do
    cd ..
done
if [ $(pwd) = "/" ]; then
    echo "No dune project found"
else
   dune build && dune install
fi
