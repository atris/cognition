cognition
=========

Cognition is a data mining tool which mines a specific dataset and identifies patterns in them based on multiple criteria.

Algorithm

1. A seed value(starting movie id) is given to the system.
2. The system gets the densities of ratings for the given movie.
3. System gets the ratings with the highest and lowest densities.
4. If the difference between the density of highest or lowest density rating and mean of densities of the other four intervals is greater than a threshold, the rating may have cheaters present.
5. Foreach(member of potential cheaters rating(s))
{
a. If(CheaterDetected is not empty)
{
Calculate probability of current member being a cheater using Naive Bayes classification.
If(probability > threshold value)
{
Process for cheater detection.
}
else
{
Go to next member.
}

		Get all the ratings for the current user.
		risky_intervals = 0.
		Foreach(rating in ratings of current user)
		{
			if(density of rating > mean of other four ratings 			by a threshold value OR density of rating < average density for that rating)
			{
				++risky_interval
			}
		}
		if(risky_interval > (5 – risky_interval))
		{
			print(“Cheater”);
		}
		else
		{
			print(“Not cheater”)
		}
