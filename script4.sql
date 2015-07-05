SELECT count(*) FROM (	
	SELECT * FROM frequency
	WHERE term = 'parliament'
) x;

