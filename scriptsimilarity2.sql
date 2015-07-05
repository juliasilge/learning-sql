SELECT A.docid, B.docid, SUM(A.count * B.count) 
from frequency as A, frequency as B
WHERE A.term = B.term AND A.docid < B.docid
GROUP BY A.docid, B.docid;