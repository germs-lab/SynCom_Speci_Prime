# sys module to handle command-line arguments
import sys

# initiliaze an empty dict
d = {}

# opem the file provided as the first command line argument (these are the ref-soil blast results)
for line in open(sys.argv[1]):
    # split each line into fields using a tab as the delimiter
    data = line.rstrip().split('\t')
    # assign the first column as the query (our genome inputs)
    query = data[0]
    #assign the second column as a hit (database genes_)
    hit = data[1]
    # convert the second to last column (e-value) as a float number
    evalue = float(data[-2])

    # check if the query already exists in the dictionary
    if query in d:
        continue # if query is already stored then skip this iteration
    else:
        # store the query and its corresponding hit in the dictionary 
        d[query] = hit 
        # if the e-value is less than or equal to the threshold (1e-5) then print the line
        if evalue <= 1e-5:
            print(line, end = '')