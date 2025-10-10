# create new env
micromamba create -p /work/adina/ngeerdes/env/primer3

# activate new env
micromamba activate /work/adina/ngeerdes/env/primer3

# install primer3 in env
micromamba install primer3 

# check install worked
primer3_core --help