SELECT * from frequency AS trans
INNER JOIN frequency AS world
ON trans.docid = world.docid
WHERE trans.term = 'transactions' AND world.term = 'world';
