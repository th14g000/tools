for wordlist in cat wordlist.txt; do host $wordlist.omegaenergia.com.br; done | grep "subdominio existente"
