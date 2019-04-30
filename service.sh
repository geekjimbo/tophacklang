# remove previous files
rm -rf big*

# produce a list of most programming languages
wget https://dzone.com/articles/big-list-256-programming && cat big-list-256-programming  | grep 'nofollow">.*<' | cut -d 

# search google and list top results
googler --count 10000 preferred hacker programming languages | grep -o '\w*' | grep -Ff languages.txt | sort | uniq -c | sort -r | head -20
