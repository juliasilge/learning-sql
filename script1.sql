SELECT count(*) FROM (
	SELECT *
	FROM frequency
	WHERE docid = '10398_txt_earn'
) x;