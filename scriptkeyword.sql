CREATE VIEW [keywordview] AS
SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count 
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION 
SELECT 'q' as docid, 'treasury' as term, 1 as count;

SELECT A.docid, B.docid, SUM(A.count * B.count) 
FROM keywordview AS A, keywordview AS B
WHERE A.term = B.term AND A.docid < B.docid AND B.docid = 'q'
GROUP BY A.docid, B.docid
ORDER BY SUM(A.count * B.count);