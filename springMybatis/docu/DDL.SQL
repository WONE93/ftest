insert into RENT_TBL_06
			(RENT_NO, 
			 BOOK_NO, 
			 RENT_PRICE, 
			 RENT_DATE, 
			 RENT_STATUS) 
	values
	(
	(SELECT NVL(max(book_no), 0)+1 FROM PAYMENT), 
	103, 2500, '2018-09-14 00:00:00....', '0')

	insert into BOOK_TBL_06 
				(BOOK_NO, 
				BOOK_NAME, 
				BOOK_COVERIMG, 
				BOOK_DATE, 
				BOOK_PRICE, 
				BOOK_PUBLISHER, 
				BOOK_INFO) 
		values(
				#{bookNo} = (SELECT NVL(max(BOOK_NO), 0)+1 FROM BOOK_TBL_06 ), 
				#{bookName}, 
				#{bookCovering}, 
				#{bookDate}, 
				#{bookPrice}, 
				#{bookPublisher}, 
				#{bookInfo})
				
				
select BOOK_NO,
	   BOOK_NAME,
	   BOOK_COVERIMG,
	   to_char(BOOK_DATE,'yyyy/dd/mm'),
	   to_char(BOOK_PRICE,'###,###'),
	   BOOK_PUBLISHER,
	   BOOK_INFO
FROM BOOK_TBL_06 
	   
select b.BOOK_NO,
	   b.BOOK_NAME,
	   SUM(r.RENT_PRICE) "rentPrice",
	   SUM(r.RENT_STATUS) "rentStatus"
FROM BOOK_TBL_06 b JOIN RENT_TBL_06 r ON(b.BOOK_NO = r.BOOK_NO)
GROUP BY b.BOOK_NO, b.BOOK_NAME
ORDER BY b.BOOK_NO
	(BOOK_NO, 
				BOOK_NAME, 
				BOOK_COVERIMG, 
				BOOK_DATE, 
				BOOK_PRICE, 
				BOOK_PUBLISHER, 
				BOOK_INFO) 