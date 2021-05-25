SELECT ITEMCODE, 
        ITEMNAME, 
        ITEMDESC, 
        ITEMDESC2,
        CASE WHEN ENDFLAG = 'Y' THEN '단종' 
        WHEN ENDfLAG = 'N' THEN '생산' END AS ENDFLAG,                                                         
        PRODDATE,
        MAKEDATE,
        MAKER,   
        EDITDATE,
        EDITOR   
   FROM TB_TESTITEM_DSH WITH(NOLOCK) 
  WHERE ITEMCODE LIKE '%' 
    AND ITEMNAME LIKE '%' 
    AND ITEMDESC LIKE '%' 
    --AND ENDFLAG  = ''
    --AND PRODDATE BETWEEN ''AND''