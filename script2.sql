SELECT count(*) FROM (
	SELECT term
	FROM frequency
	WHERE docid = '10398_txt_earn'
	AND count = 1
) x;