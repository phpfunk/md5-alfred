if [[ {query} =~ [a-f0-9]{32} ]]
then
    echo $(curl --silent http://md5.hashcracking.com/search.php?md5={query}) | pbcopy
else
    echo -n "{query}" | md5 | tr -d '\n' | pbcopy
fi

pbpaste