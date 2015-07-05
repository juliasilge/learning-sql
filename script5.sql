SELECT COUNT(*) FROM (
	SELECT docid, SUM(count) FROM frequency
	GROUP BY docid
	HAVING SUM(count) > 300
) x;

