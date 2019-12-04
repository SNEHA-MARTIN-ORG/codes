select * from dbo.DimGeography

SELECT * FROM DBO.FactCrime ORDER BY StateKey
SELECT  *  FROM DBO.FactPropertyMedian ORDER BY StateKey
SELECT  *   FROM DBO.FactRentalMedian ORDER BY StateKey

----FACT CRIME ATTIBUTE QUERY----
SELECT       distinct dbo.Crime.CrimeRate, dbo.Crime."Year", dbo.Suburb.Suburb, dbo.Suburb.StateCode
FROM            dbo.Crime, dbo.Suburb
WHERE        dbo.Crime.Suburb = dbo.Suburb.Suburb

------FACT RENTAL MEDIAN ATTRIBUTE QUERY---
SELECT      DISTINCT  dbo.Suburb.Suburb, dbo.RentalData.AvergeRent, dbo.State.StateCode
FROM            dbo.RentalData, dbo.Suburb, dbo.State
WHERE        dbo.RentalData.Suburb = dbo.Suburb.Suburb AND dbo.Suburb.StateCode = dbo.State.StateCode

----FACT PROPERTY MEDIAN ATTRIBUTE QUERY---
SELECT     DISTINCT   dbo.Suburb.Suburb, dbo.PropertyMedian.UpdatedYear, dbo.PropertyMedian.PropertyMedianValue, dbo.Suburb.StateCode, dbo.PropertyMedian.UpdatedMonth
FROM            dbo.PropertyMedian, dbo.Suburb
WHERE        dbo.PropertyMedian.Suburb = dbo.Suburb.Suburb







SELECT * FROM DBO.FactRentalMedian
