z <- c(1,
      1,
      1,
      1,
      1,
      1,
      5,
      5,
      5)
tab1 <- table(z)
flag_cheater <- 0
protab1 <- prop.table(tab1)
i <- 1
avg_density <- mean(protab1)
while(i<= 5){
	current_dens <- protab1[i]
	
		if(is.na(current_dens)){
			flag_cheater <- 1
		}else if((avg_density - current_dens) > 0.2){
			flag_cheater <- 1
		}

	
	print(protab1[i])
	print(avg_density)
	print(current_dens)
	i <- i + 1
}

if(flag_cheater == 1){
	print("Cheater")
}else{
	print("Not cheater")
}
