
#>PvR045_MDBGENNB_00693_primer1
grep -n "MDBGENNB_00693" PvR045.primer3.out.txt  
# find the line number of the gene with the primers

awk 'NR>=17025 && NR<=17155' PvR045.primer3.out.txt > PvR045.selected.txt 
# extract the lines with the primers .. about 130 lines will extract all primer pairs 

#>PvR045_MDBGENNB_02857_primer2
grep -n "MDBGENNB_02857" PvR045.primer3.out.txt    
       #54657:SEQUENCE_ID=MDBGENNB_02857  

awk 'NR>=54657 && NR<=54787' PvR045.primer3.out.txt > PvR045.selected2.txt

#>PvR045_MDBGENNB_04506_primer0
grep -n "MDBGENNB_04506" PvR045.primer3.out.txt    
       # 81025:SEQUENCE_ID=MDBGENNB_04506
awk 'NR>=81025 && NR<=81155' PvR045.primer3.out.txt > PvR045.selected3.txt

#>PvR045_MDBGENNB_05033_primer0 and primer2
grep -n "MDBGENNB_05033" PvR045.primer3.out.txt    
       # 100353:SEQUENCE_ID=MDBGENNB_05033
awk 'NR>=100353 && NR<=100483' PvR045.primer3.out.txt > PvR045.selected4.txt

#>PvR096_KIGJDDIO_01901_primer7 
grep -n "KIGJDDIO_01901" PvR096.primer3.out.txt    
       #  34993:SEQUENCE_ID=KIGJDDIO_0190 
awk 'NR>=34993 && NR<=35223' PvR096.primer3.out.txt > PvR096.selected.txt

#>PvR096_KIGJDDIO_02876_primer3 
grep -n "KIGJDDIO_02876" PvR096.primer3.out.txt    
      #55162:SEQUENCE_ID=KIGJDDIO_02876 
awk 'NR>=55162 && NR<=55292' PvR096.primer3.out.txt > PvR096.selected2.txt 

#>PvR096_KIGJDDIO_04868_primer0 
grep -n "KIGJDDIO_04868" PvR096.primer3.out.txt    
     #88456:SEQUENCE_ID=KIGJDDIO_04868 
awk 'NR>=88456 && NR<=88586' PvR096.primer3.out.txt > PvR096.selected3.txt

#>PvR096_KIGJDDIO_05862_primer8 
grep -n "KIGJDDIO_05862" PvR096.primer3.out.txt    
     # 106438:SEQUENCE_ID=KIGJDDIO_05862 
awk 'NR>=106438 && NR<=106668' PvR096.primer3.out.txt > PvR096.selected4.txt

#>PvR096_KIGJDDIO_06020_primer3_ 
grep -n "KIGJDDIO_06020" PvR096.primer3.out.txt    
     #124663:SEQUENCE_ID=KIGJDDIO_06020
awk 'NR>=124663 && NR<=124893' PvR096.primer3.out.txt > PvR096.selected5.txt

#>PvR102_NECBBOLF_01599_primer9_ 
grep -n "NECBBOLF_01599" PvR102.primer3.out.txt    
     #  66674:SEQUENCE_ID=NECBBOLF_01599 
awk 'NR>=66674 && NR<=66916' PvR102.primer3.out.txt > PvR102.selected.txt

#>PvR102_NECBBOLF_03196_primer0 
grep -n "NECBBOLF_03196" PvR102.primer3.out.txt    
    # 136901:SEQUENCE_ID=NECBBOLF_03196 
awk 'NR>=136901 && NR<=137031' PvR102.primer3.out.txt > PvR102.selected2.txt 

#>PvR102_NECBBOLF_03568_primer2 
grep -n "NECBBOLF_03568" PvR102.primer3.out.txt    
    # 155638:SEQUENCE_ID=NECBBOLF_03568 
awk 'NR>=155638 && NR<=155768' PvR102.primer3.out.txt > PvR102.selected3.txt

#>PvR102_NECBBOLF_04231_primer5 
grep -n "NECBBOLF_04231" PvR102.primer3.out.txt    
    # 182138:SEQUENCE_ID=NECBBOLF_04231
awk 'NR>=182138 && NR<=182288' PvR102.primer3.out.txt > PvR102.selected4.txt

#>PvR102_NECBBOLF_04231_primer6 
grep -n "NECBBOLF_04231" PvR102.primer3.out.txt    
    # 182138:SEQUENCE_ID=NECBBOLF_04231
awk 'NR>=182138 && NR<=182350' PvR102.primer3.out.txt > PvR102.selected5.txt