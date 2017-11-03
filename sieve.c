//The Seive of Erasthones

#include <stdio.h>

//this is the main program
int main(int argc, char *argv[]){
    int i, upper, prime = 2;
    
    if (argc != 2){
        printf("Usage: $ ./sieve <upper limit>\n");
        return 1;
    }
    
    upper = atoi(argv[1]) + 1;
    int sMap[upper + 1];
    
    for (i = 0; i <= upper; i++){
        sMap[i] = i;
    }
    
    do{
        for (i = prime; i <= upper; i++){
                
            if ((i % prime == 0)&&(i != prime))
                sMap[i] = 0;
        }
        
        i = prime + 1;
        
        do{
            prime = sMap[i++];
        }while((prime == 0)&&(prime <= upper));
       
        if ((prime <= upper)&&(i < upper))
            printf("%d ", prime);
        else if (i > upper)
            break;
        
    }while(prime <= upper);
    
    return 0;
}