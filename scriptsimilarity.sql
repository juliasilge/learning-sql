SELECT SUM(doc1.count*doc2.count) FROM frequency AS doc1
INNER JOIN frequency AS doc2
ON doc1.term = doc2.term
WHERE doc1.docid = '10080_txt_crude' AND doc2.docid = '17035_txt_earn';
