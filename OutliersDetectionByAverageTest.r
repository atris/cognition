z <- c(5,4,5,4,1,4,4,4,2,3,4,4,4,5,5,5,5,5,5,5,5,4,5,5,4,5,4,4,5,5,5,5,1,5,5,5,5,4,3,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,5,3)
counters_list <- rep(1, 5)
i <- 1
list1 <- rep(NA, length(z))
list2 <- rep(NA, length(z))
list3 <- rep(NA, length(z))
list4 <- rep(NA, length(z))
list5 <- rep(NA, length(z))
while(i <= length(z)){
	if(z[i] == 1){
		list1[counters_list[1]] <- z[i]
		counters_list[1] <- counters_list[1] + 1
	}
	
	if(z[i] == 2){
		list2[counters_list[2]] <- z[i]
		counters_list[2] <- counters_list[2] + 1
	}

	if(z[i] == 3){
		list3[counters_list[3]] <- z[i]
		counters_list[3] <- counters_list[3] + 1
	}

	if(z[i] == 4){
		list4[counters_list[4]] <- z[i]
		counters_list[4] <- counters_list[4] + 1
	}

	if(z[i] == 5){
		list5[counters_list[5]] <- z[i]
		counters_list[5] <- counters_list[5] + 1
	}

i <- i+1
}

conc_list <- list(list1=list1,list2=list2,list3=list3,list4=list4,list5=list5)
tab1 <- table(z)
protab1 <- prop.table(tab1)
min_density = min(protab1)
min_density_loc <- which(protab1 == min(protab1))
min_density_list <- conc_list[min_density_loc]

sum_remaining_dens <- sum(protab1) - min_density


avg_dens_remaining <- sum_remaining_dens / 4

if((avg_dens_remaining - min_density) >= 0.1){
	print("There may be cheaters in min interval")
	print("counter value is")
	print(counters_list[min_density_loc])
}

if((avg_dens_remaining - min_density) < 0.1)
{
	print("There may not be cheaters in min interval")
}

print(min_density_loc)
print(min_density)
print(avg_dens_remaining)

print(list1)
print(conc_list[min_density_loc])
