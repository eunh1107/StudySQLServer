SELECT ITEMCODE, 
        ITEMNAME, 
        ITEMDESC, 
        ITEMDESC2,
        CASE WHEN ENDFLAG = 'Y' THEN '����' 
        WHEN ENDfLAG = 'N' THEN '����' END AS ENDFLAG,                                                         
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