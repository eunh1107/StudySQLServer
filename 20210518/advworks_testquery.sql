-- product category를 기준으로 OUTER JOIN 299 NULL 4
SELECT pd.Name, pd.ProductNumber
	 , pd.Color, pd.StandardCost
	 , pd.ListPrice, pd.Size, pd.Weight
	 --, pc.ProductCategoryID
	 , pc.Name
  FROM SalesLT.Product AS pd
 RIGHT OUTER JOIN SalesLT.ProductCategory AS pc
	ON pd.ProductCategoryID = pc.ProductCategoryID

-- CUSTOMER 847개, ADDRESS 450개, CustomerAddress 417개
SELECT CONCAT(Title, ' ', c.FirstName, ' ',c.MiddleName, ' ', c.LastName) AS FullName
	  , C.CompanyName, C.EmailAddress, C.Phone
	  FROM SalesLT.Customer AS c
	  

SELECT ad.AddressID
	 , ad.PostalCode
	 , CONCAT(ad.AddressLine1, ' ', ad.AddressLine2, ',', ad.City, ',', ad.StateProvince)AS addr
	 , ad.CountryRegion AS Country
	 FROM SalesLT.Address AS ad
SELECT * FROM SalesLT.CustomerAddress AS ca

