#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char ** argv){
   
    int n;
    int k;
    int total = 1;
    
	printf("Enter n:");
	scanf("%d", &n);
	
	printf("Enter k:");
	scanf("%d", &k);
	if(k==n){
	    while(n!=0){
	        total=total*n;
	        n=n-1;
	    }
	}
	else{
	while(k > 1){
	    k=k-1;
	    total=total*(n-k);
	    
	}
	if(k=1){
	total = total*n;
	}
	}
	
	printf("Permutation is: %d", total);
	return 0;
}