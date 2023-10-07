### split the dm files according to the interaction

cp dij.out.bkp dij.out
awk '{printf "%8s%8s%14.6f%12.6f%12.6f%14.6f%12.6f%12.6f%13.6f\n", $1, $2, $3, $4, $5, $6, $7, $8, $9}' dij.out > dij.aux
mv dij.aux dij.out

awk '$1==5' jij.out > jij-pt1
awk '$1==6' jij.out > jij-co1
awk '$1==7' jij.out > jij-co2
awk '$1==8' jij.out > jij-co3
awk '$1==9' jij.out > jij-co4
awk '$1==2997' jij.out > jij-pt2


awk '$1==5' dij.out > dij-pt1
awk '$1==6' dij.out > dij-co1
awk '$1==7' dij.out > dij-co2
awk '$1==8' dij.out > dij-co3
awk '$1==9' dij.out > dij-co4
awk '$1==2997' dij.out > dij-pt2

#pt1

awk '$5==0' jij-pt1 | sort -k 7n > jij-pt1-pt1
awk '$5==0.5773' jij-pt1 | sort -k 7n > jij-pt1-co1
awk '$5==1.1546' jij-pt1 | sort -k 7n > jij-pt1-co2
awk '$5==1.7319' jij-pt1 | sort -k 7n > jij-pt1-co3
awk '$5==2.3092' jij-pt1 | sort -k 7n > jij-pt1-co4
awk '$5==2.8865' jij-pt1 | sort -k 7n > jij-pt1-pt2

awk '$5==0' dij-pt1 | sort -k 9n > dij-pt1-pt1
awk '$5==0.5773' dij-pt1 | sort -k 9n > dij-pt1-co1
awk '$5==1.1546' dij-pt1 | sort -k 9n > dij-pt1-co2
awk '$5==1.7319' dij-pt1 | sort -k 9n > dij-pt1-co3
awk '$5==2.3092' dij-pt1 | sort -k 9n > dij-pt1-co4
awk '$5==2.8865' dij-pt1 | sort -k 9n > dij-pt1-pt2

#co1

awk '$5==0' jij-co1 | sort -k 7n > jij-co1-co1
awk '$5==0.5773' jij-co1 | sort -k 7n > jij-co1-co2
awk '$5==1.1546' jij-co1 | sort -k 7n > jij-co1-co3
awk '$5==1.7319' jij-co1 | sort -k 7n > jij-co1-co4
awk '$5==2.3092' jij-co1 | sort -k 7n > jij-co1-pt2

awk '$5==0' dij-co1 | sort -k 9n > dij-co1-co1
awk '$5==0.5773' dij-co1 | sort -k 9n > dij-co1-co2
awk '$5==1.1546' dij-co1 | sort -k 9n > dij-co1-co3
awk '$5==1.7319' dij-co1 | sort -k 9n > dij-co1-co4
awk '$5==2.3092' dij-co1 | sort -k 9n > dij-co1-pt2

#co2

awk '$5==0' jij-co2 | sort -k 7n > jij-co2-co2
awk '$5==0.5773' jij-co2 | sort -k 7n > jij-co2-co3
awk '$5==1.1546' jij-co2 | sort -k 7n > jij-co2-co4
awk '$5==1.7319' jij-co2 | sort -k 7n > jij-co2-pt2

awk '$5==0' dij-co2 | sort -k 9n > dij-co2-co2
awk '$5==0.5773' dij-co2 | sort -k 9n > dij-co2-co3
awk '$5==1.1546' dij-co2 | sort -k 9n > dij-co2-co4
awk '$5==1.7319' dij-co2 | sort -k 9n > dij-co2-pt2

#co3

awk '$5==0' jij-co3 | sort -k 7n > jij-co3-co3
awk '$5==0.5773' jij-co3 | sort -k 7n > jij-co3-co4
awk '$5==1.1546' jij-co3 | sort -k 7n > jij-co3-pt2

awk '$5==0' dij-co2 | sort -k 9n > dij-co3-co3
awk '$5==0.5773' dij-co3 | sort -k 9n > dij-co3-co4
awk '$5==1.1546' dij-co3 | sort -k 9n > dij-co3-pt2

#co4

awk '$5==0' jij-co4 | sort -k 7n > jij-co4-co4
awk '$5==0.5773' jij-co4 | sort -k 7n > jij-co4-pt2

awk '$5==0' dij-co4 | sort -k 9n > dij-co4-co4
awk '$5==0.5773' dij-co4 | sort -k 9n > dij-co4-pt2

#pt2

awk '$5==0' jij-pt2 | sort -k 7n > jij-pt2-pt2

awk '$5==0' dij-pt2 | sort -k 9n > dij-pt2-pt2

